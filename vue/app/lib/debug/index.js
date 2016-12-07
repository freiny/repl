"use strict";
const fs = require('fs');

var obj = {};

obj.conf = {};
obj.conf.isLog = true;

// nolog, filelog, console.log
obj.conf.logfunc = filelog;

// ****************************************************************
function nolog(){

}
// ****************************************************************
function filelog(){
	var s = '';
	for (var i=0; i<arguments.length; i++){
		s += arguments[i] + ' ';
	}

	fs.appendFile('/src/dbg.log', s + '\n', function(err) {
		if (err) console.log('Error writing to debug log');
	});

}

// ****************************************************************
obj.help = function(){
	console.log('debug');
};

// ****************************************************************
obj.log = function(){
	var args = [];
		args.push('[LOG]');
		for (var i=0; i<arguments.length; i++) {
			args.push(arguments[i]);
		}
		obj.conf.logfunc.apply(null, args);
};

// ****************************************************************
obj.fn = function(file, name, msg){
	arguments[1] = name + '()';
	var args = [];
		args.push('[FUNC]');
		for (var i=0; i<arguments.length; i++) {
			args.push(arguments[i]);
		}
		if (typeof msg === 'undefined') args.push('<START>');
		obj.conf.logfunc.apply(null, args);
};

// ****************************************************************
obj.err = function(file, name, msg){
	var msg = typeof msg === 'undefined' ? '' : msg;
	var args = [];
	args.push('[ERROR]');
	for (var i=0; i<arguments.length; i++) {
		args.push(arguments[i]);
	}
	obj.conf.logfunc.apply(null, args);

};

// ****************************************************************
module.exports = obj;
