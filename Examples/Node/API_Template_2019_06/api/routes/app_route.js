var controller = require('../controllers/app_controller');
module.exports = function (webserver) {
    webserver.route('/api/v1/items')
        .post(controller.create_an__item)
        .get(controller.read_all__items);
    webserver.route('/api/v1/items/:id')
        .get(controller.read_an__item)
        .put(controller.update_an__item)
        .delete(controller.delete_an__item);
};

