'use strict';
const thisFile = 'server.js';
//----------------------------------------------------------------
const dbg = require('./lib/debug');

const HTTP_PORT = process.env.HTTP_PORT;
var express = require('express');
var http = require('http');
var app = express();

app.use(express.static(__dirname + '/public'));
http.createServer(app).listen(HTTP_PORT);
