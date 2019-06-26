var _httpresultwrapper = require('../infrastructure/httphandler');
var bll = require('../bll/app_bll');
exports.create_an__item= function (req, res) {
    bll.create_an__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};
exports.read_all__items= function (req, res) {
    bll.read_all__items(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};
exports.read_an__item= function (req, res) {
    bll.read_an__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};
exports.update_an__item= function (req, res) {
    bll.update_an__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};
exports.delete_an__item= function (req, res) {
    bll.delete_an__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};