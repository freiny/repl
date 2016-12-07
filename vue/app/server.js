'use strict';
const HTTP_PORT = process.env.HTTP_PORT;
const express = require('express');
const http = require('http');
const app = express();

app.use(express.static(__dirname + '/public'));
http.createServer(app).listen(HTTP_PORT);
console.log('Listening on port', HTTP_PORT);
