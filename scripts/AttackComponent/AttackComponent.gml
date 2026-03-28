/// @param {Id.Instance} owner
/// @param {Struct.Attack} attack
function AttackComponent(owner, target, attack, data) constructor {
    
	_data = data
	_owner = owner;
	_target = target;
    _attack = attack;
	
    _timer = 0;
	
    step = function(trigger) {
        if (_timer > 0) _timer -= DeltaToSeconds(delta_time);
        if (trigger && _timer <= 0) {
            _attack.execute(_owner, _target, _data);
            _timer = _data.cooldown;
        }
    };
}