"use strict";
const thisFile="util/index.js";

const libpath = '../../lib/';
const dbg = require(libpath + 'debug');
const fs = require('fs');

//****************************************************************
var obj = {};
//****************************************************************
obj.isBase64 = function(s) {
	const thisFunc = 'isBase64';
	dbg.fn(thisFile, thisFunc);

	const set = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-';
	var base64 = {};
	for (var i = 0; i < set.length; i++) {
		base64[set[i]] = true;
	}

	for (var i = 0; i < s.length; i++) {
		if (base64[s[i]] === undefined) return false;
	}

	return true;
};

// ****************************************************************
module.exports = obj;
