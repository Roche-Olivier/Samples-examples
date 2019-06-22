var controller = require('../controllers/api_controller');

module.exports = function (webserver) {
    webserver.route('/ex1/api/v1/item')
        .post(controller.create_a__item)
        .get(controller.read_all__item);
    webserver.route('/ex1/api/v1/item/:id')
        .get(controller.read_a__item)
        .put(controller.update_a__item)
        .delete(controller.delete_a__item);
};