global.custom_mapping[current_key] = keyboard_key;
//keyboard_lastkey = -1;

current_key++;

if (current_key >= array_length(key_types)) instance_destroy();