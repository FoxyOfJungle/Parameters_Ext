
// TESTS
show_debug_message(string_repeat("-", 128));

// get all parameters input
var _parameters = parameter_get_list();
show_debug_message(_parameters);


// get parameter (will return "undefined", if none provided)
var _data = parameter_get(_parameters, "-data");
show_debug_message(_data);


// get game parameter
var _game = parameter_get(_parameters, "-game");
show_debug_message(_game);


// generate parameters
var _dir = working_directory;
var _parameters = parameter_generate(["-game", _dir + "Exception_Handler.win", "-data", sha1_string_unicode("FoxyOfJungle")]);
show_debug_message(_parameters);


// usage example: run external application and send base64 json data
/*
var _dir = working_directory;
execute_shell(_dir + "Exception_Handler.exe", parameter_generate(["-game", _dir + "Exception_Handler.win", "-jdata", base64_encode(_json_data)]));
*/

show_debug_message(string_repeat("-", 128));

