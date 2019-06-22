console.log("hello world")

const express = require('express')
const app = express()

app.get('/', function (req, res) {
    res.send('Hello World')
})

var api_routes = require('./api/routes/api_routes');
api_routes(app);

app.listen(3101)