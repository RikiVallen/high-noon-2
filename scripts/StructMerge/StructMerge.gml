function struct_merge(_base, _extra) {
    var _out = variable_clone(_base, 0);
    var _keys = variable_struct_get_names(_extra);
    var _len = array_length(_keys);
    for (var i = 0; i < _len; i++) {
        var _key = _keys[i];
        struct_set(_out, _key, struct_get(_extra, _key));
    }
    return _out;
}