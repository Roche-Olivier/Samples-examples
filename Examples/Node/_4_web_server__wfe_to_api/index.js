const express = require('express')
const path = require('path')
const app = express()

app.use('/css/', express.static(path.join(__dirname, '/content/css')));
app.use('/images/', express.static(path.join(__dirname, '/content/images')));
app.use('/js/', express.static(path.join(__dirname, '/content/js')));

app.get('/', function (req, res) { res.sendFile(path.join(__dirname + '/content/pages/index.html')); });
app.get('/home/', function (req, res) { res.sendFile(path.join(__dirname + '/content/pages/index.html')); });

app.listen(3100)