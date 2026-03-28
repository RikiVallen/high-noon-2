function StructData(struct) {
	_i = 0;
	struct_foreach(struct, function(_name, _value) {
		draw_text(x - sprite_width / 2, y + 32 + (16 * _i), $"{_name}: {_value}")
		_i++
	})
}