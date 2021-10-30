_data = score_file();
_score = _data[0];
_type = type_as_string(_data[1]);

step = floor(_score / 50) * 5;

_display_score = 0;
frames = 0;
shake = 0;

global.started = false;
global.tutorial = true;