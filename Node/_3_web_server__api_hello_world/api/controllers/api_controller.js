var bll = require('../bll/api_bll');
var _httpresultwrapper = require('../infrastructure/httphandler');

exports.create_a__item = function (req, res) {
    bll.create_a__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};

exports.read_all__item = function (req, res) {
    bll.read_all__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};

exports.read_a__item = function (req, res) {
    bll.read_a__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};

exports.update_a__item = function (req, res) {
    bll.update_a__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};

exports.delete_a__item = function (req, res) {
    bll.delete_a__item(req, function (jsonResult, haserror, code) {
        _httpresultwrapper(res, jsonResult, haserror, code);
    });
};