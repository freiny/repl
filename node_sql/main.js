'use strict';
const _ = require('underscore');
var mysql = require('mysql');

var c = mysql.createConnection({
	port     : process.env.MYSQL_PORT,
  host     : process.env.MYSQL_HOST,
	database : process.env.MYSQL_DATABASE,
  user     : process.env.MYSQL_USER_NAME,
  password : process.env.MYSQL_USER_PASSWORD
});

c.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }

  console.log('connected as id ' + c.threadId);
});

c.query('SHOW DATABASES;', function(err, results){
	_.each(results, function(each){
		console.log(each.Database);
	});
})
