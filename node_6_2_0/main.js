'use strict';
console.log('hello');

const _ = require('underscore');
_.map([1,2,3],function(each){
	console.log(each);
});

const PORT = process.env.PORT || 8080;
const express = require('express');
const app = express();
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

const router = express.Router();
app.use('/', router);
router.get('/', function(req, res){
	var msg = {'message': 'root'};
	console.log();
 	res.json(msg);
});

app.listen(PORT);
console.log('[LISTEN] port', PORT);
