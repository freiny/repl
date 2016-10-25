'use strict';
console.log('hello asfd');

const MYSQL_USER_NAME = process.env.MYSQL_USER_NAME;
const MYSQL_USER_PASSWORD = process.env.MYSQL_USER_PASSWORD;

var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : '127.0.0.1',
  user     : 'root',
  password : 'rootpass',
	database : 'mydb',
	port     : '3306'
});

connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }

  console.log('connected as id ' + connection.threadId);
});
