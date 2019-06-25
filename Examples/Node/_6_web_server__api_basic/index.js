const express = require('./node_modules/express')
const path = require('path')
const app = express()

// SWAGGER
//-----------------------------------------------------------------------
process.env.SWAGGER_FILE='swagger.json'
process.env.SWAGGER_HOST='localhost:3100'
var pjson = require('./package.json');
const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require('./swagger/' + process.env.SWAGGER_FILE);
var showExplorer = false;
var options = {
  validatorUrl: null
};
swaggerDocument.host = process.env.SWAGGER_HOST
swaggerDocument.info.version = pjson.version
swaggerDocument.info.description = pjson.name
swaggerDocument.info.title = pjson.description

swaggerDocument.basePath = '/api/v1/'
app.use('/swagger', swaggerUi.serve, swaggerUi.setup(swaggerDocument, showExplorer, options));
//-----------------------------------------------------------------------


app.use('/css/', express.static(path.join(__dirname, '/content/css')));
app.use('/images/', express.static(path.join(__dirname, '/content/images')));
app.use('/js/', express.static(path.join(__dirname, '/content/js')));
app.use('/pages/', express.static(path.join(__dirname, '/content/pages')));

app.get('/', function (req, res) { res.sendFile(path.join(__dirname + '/content/pages/index.html')); });
app.get('/home/', function (req, res) { res.sendFile(path.join(__dirname + '/content/pages/index.html')); });

var api_routes = require('./api/routes/app_route');
api_routes(app);

app.listen(3100)