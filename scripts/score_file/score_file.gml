function score_file(retrieve = true, _score = 0, _type = global.current_wave_type) {
	if (os_browser == browser_not_a_browser) {
		if (retrieve) {
			if (file_exists(SCORE_FILENAME)) {
				var file = file_text_open_read(SCORE_FILENAME);
				var _reportscore = file_text_read_real(file);
				file_text_readln(file);
				var _reporttype = file_text_read_real(file);
				file_text_close(file);
				return [_reportscore, _reporttype];
			} else {
				return [0, 0];
			}
		} else {
			var _tmpscore = 0;
			var _reporttype = 0;
		
			if (file_exists(SCORE_FILENAME)) {
				var file = file_text_open_read(SCORE_FILENAME);
				_tmpscore = file_text_read_real(file);
				file_text_readln(file);
				_reporttype = file_text_read_real(file);
				file_text_close(file);
			}
		
			if (_tmpscore < _score) {
				file = file_text_open_write(SCORE_FILENAME);
				file_text_write_real(file, _score);
				file_text_writeln(file);
				file_text_write_real(file, _type);
				file_text_close(file);
			}
		
			return [_score, _type];
		}
	} else {
		if (retrieve) {
			var _tmpscore = html5_localstorage_load("score", "0");
			var _tmptype = html5_localstorage_load("type", "0");
			
			return [real(_tmpscore), real(_tmptype)];
		} else {
			var _tmpscore = real(html5_localstorage_load("score", "0"));
			
			if (_tmpscore < _score) {
				html5_localstorage_save("score", string(_score));
				html5_localstorage_save("type", string(_type));
			}
		}
	}
}