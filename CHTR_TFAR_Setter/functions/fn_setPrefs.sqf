#include "function_macros.hpp"
#include "defaults.hpp"
params[["_index", 0, [0]], ["_value", true, [true]]];
if(_index < 0 || _index >= count PREFS_DEFAULT) exitWith {
	LOG_ERROR(format["Index %1 out of range at fnc_setPrefs.sqf", _index]);
	[]
};

_settings = call FUNC(loadSettings);
if(count _settings == 0) exitWith {
	LOG_ERROR(QUOTE(GVAR(Settings) not initialised));
};

_profileIndex = (_settings select 0) + 1; //0 is profile, therefore profile 0 = index 1
_currentProfile = _settings select _profileIndex;
_prefs = _currentProfile select PREFS_INDEX;

if(count _prefs == 0) then {
	LOG("Prefs empty, Initialising to defaults");
	_currentProfile set [PREFS_INDEX, PREFS_DEFAULT];
	_prefs = _currentProfile select PREFS_INDEX; //ensure that the reference is preserved
};
_prefs set [_index, _value];