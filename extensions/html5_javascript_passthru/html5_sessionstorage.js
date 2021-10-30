function save_item_sessionstorage(key, value) {
	window.sessionStorage.setItem(key, value);
}

function load_item_sessionstorage(key, default_value) {
	var _return = window.sessionStorage.getItem(key);
	if (_return == undefined) _return = default_value;
	return _return;
}

function remove_item_sessionstorage(key) {
	window.sessionStorage.removeItem(key);
}

function key_sessionstorage(index) {
	return window.sessionStorage.key(index);
}

function clear_sessionstorage() {
	window.sessionStorage.clear();
}

function length_sessionstorage() {
	return window.sessionStorage.length;
}

function test_for_sessionstorage() {
	var testphrase = "39MecLihGRGshqwQ4LHJ";
	try {
		window.sessionStorage.setItem(testphrase, testphrase);
		window.sessionStorage.removeItem(testphrase);
		return 1;
	} catch (error) {
		return 0;
	}
}