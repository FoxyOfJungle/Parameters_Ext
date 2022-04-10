
/*--------------------------------------------------------
	    Parameters Extended Library for GameMaker
	Copyright (C) 2022 Foxy Of Jungle - MIT License
--------------------------------------------------------*/

function parameter_get(parameter_str, command_name) {
	var _str = parameter_str, _str1 = "";;
	var _length = string_length(_str);
	for(var i = 1; i <= _length; ++i) {
		var _cc = string_char_at(_str, i);
		
		if (_cc == " ") {
			// run once after arrives space (end of word)
			_str1 = ""; // reset string
		} else {
			// run for each char, without being in space char
			_str1 += _cc;
			// command_name found
			if (_str1 == command_name) {
				for(var j = 0; j < parameter_count(); ++j) {
					if (parameter_string(j) == _str1) return parameter_string(j+1);
				}
			}
		}
		
	}
	return undefined;
}

function parameter_get_list() {
	var _str = "";
	for(var i = 0; i < parameter_count(); ++i) {
		if (i != 0) _str += " ";
		_str += parameter_string(i);
	}
	return _str;
}

function parameter_generate(parameters_array) {
	var _str = "";
	for(var i = 0; i < array_length(parameters_array); ++i) {
		if (i != 0) _str += " ";
		_str += parameters_array[i];
	}
	return _str;
}
