
var ajax_calls = {
    get: function (context, onDoneFunction, url, token, params, callbackData, additionalHeaders) {
        return ajax_base.call('GET', context, onDoneFunction, url, token, params, callbackData, additionalHeaders);
    },

    post: function (context, onDoneFunction, url, token, params, callbackData, additionalHeaders) {
        return ajax_base.call('POST', context, onDoneFunction, url, token, params, callbackData, additionalHeaders);
    },

    put: function (context, onDoneFunction, url, token, params, callbackData, additionalHeaders) {
        return ajax_base.call('PUT', context, onDoneFunction, url, token, params, callbackData, additionalHeaders);
    },

    delete: function (context, onDoneFunction, url, token, params, callbackData, additionalHeaders) {
        return ajax_base.call('DELETE', context, onDoneFunction, url, token, params, callbackData, additionalHeaders);
    },
}
var ajax_base = {
    call: function (method, context, onDoneFunction, url, token, params, callbackData, additionalHeaders, asyncMethod) {
        var returnData = new ajax_obj._ajax_data();
        returnData.callbackData = callbackData;

        var requestHeaders = (token) ? {
            Authorization: "Bearer " + token
        } : {};

        if ((additionalHeaders !== undefined) && (additionalHeaders !== null)) {
            $.each(additionalHeaders, function (index, headerItem) {
                for (var attribName in headerItem) {
                    requestHeaders[attribName] = headerItem[attribName];
                }
            });
        }
        return $.ajax({
            async: true,
            type: method,
            url: url,
            headers: requestHeaders,
            contentType: 'application/json; charset=utf-8',
            context: context,
            crossDomain : true,
            cache: false,
            data: params,
            xhrFields: {
                withCredentials: true
            },
            success: function (data) {
                returnData.success = true;
                returnData.errorMessage = data.errorMessage;
                returnData.data = data;
                returnData.additionalInfo = data.additionalInfo;
                onDoneFunction.call(context, returnData);
            },
            error: function (jqXhr, textStatus, errorThrown) {
                var success = false;
                var errorcode = "-1";
                var errormessage = textStatus;
                var errorItem = null;
                if (jqXhr.responseJSON) {
                    var error = jqXhr.responseJSON.error;
                    errorcode = jqXhr.responseJSON.httpStatusCode;
                    if (error != null) {
                        errormessage =  error.message;
                        errorItem = error;
                    }
                }
                returnData.success = success;
                returnData.error = errorItem;
                returnData.errorCode = errorcode;
                returnData.errorMessage = errormessage;
                onDoneFunction.call(context, returnData);
            }
        });
    }
}
var ajax_obj = {
    _ajax_data: function () {
        var success = false;
        var httpStatusCode = 0;
        var errorMessage = "";
        var data = {};
        var count = 0;
        var additionalInfo = "";
        var callbackData = null;
    },
}
