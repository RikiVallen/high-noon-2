/// @param {Id.Instance} owner
/// @param {Struct.Attack} attack
/// @param {Struct.} name description
function AttackComponent(owner, attack, data) constructor {
    
	_data = data
	_owner = owner;
    _attack = attack;
	
    _timer = 0;
	
    step = function(trigger) {
        if (_timer > 0) _timer -= DeltaToSeconds(delta_time);
        if (trigger && _timer <= 0) {
            _attack.execute(_owner, _data);
            _timer = _data.cooldown;
        }
    };
}