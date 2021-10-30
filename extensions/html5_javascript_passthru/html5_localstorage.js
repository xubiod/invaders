function save_item_localstorage(key, value) {
	window.localStorage.setItem(key, value);
}

function load_item_localstorage(key, default_value) {
	var _return = window.localStorage.getItem(key);
	if (_return == undefined) _return = default_value;
	return _return;
}

function remove_item_localstorage(key) {
	window.localStorage.removeItem(key);
}

function key_localstorage(index) {
	return window.localStorage.key(index);
}

function clear_localstorage() {
	window.localStorage.clear();
}

function length_localstorage() {
	return window.localStorage.length;
}

function test_for_localstorage() {
	var testphrase = "39MecLihGRGshqwQ4LHJ";
	try {
		window.localStorage.setItem(testphrase, testphrase);
		window.localStorage.removeItem(testphrase);
		return 1;
	} catch (error) {
		return 0;
	}
}