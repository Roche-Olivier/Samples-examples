var page_load = {
    init_ko: function () {
        dm.my_observable_field = ko.observable()
    },
    init_page: function () {
        var now = moment(new Date()).format("ddd YYYY-MM-DD");
        dm.my_observable_field(now)
    }
}