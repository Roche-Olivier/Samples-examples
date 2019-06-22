
exports.create_a__item = function (req, callback) {
    callback("create new item", false, 201)
};

exports.read_all__item = function (req, callback) {
    callback("read all item", false, 200)
};

exports.read_a__item = function (req, callback) {
    callback("read an item", false, 200)
};

exports.update_a__item = function (req, callback) {
    callback("update an item", false, 200)
};

exports.delete_a__item = function (req, callback) {
    callback("delete an item", false, 204)
};