module.exports = function (res,jsonResult, haserror, code) {
    if (haserror) { 
        res.status(code).type('application/json').json({success: false, httpStatusCode: code, error: { message: jsonResult }});
    } else {
        res.status(code).type('application/json').json({success: true, httpStatusCode: code, data: jsonResult });
    }
}
