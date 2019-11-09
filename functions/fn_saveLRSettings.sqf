/*
 * Author: CI-C Chatter and CI Mirror
 * Gets the active LR Radio of the Player(TFAR_fnc_activeLrRadio)
 * Sets the profileNamespace variable "arf_setter_settings" to have the settings of current raido by calling "TFAR_fnc_getLrSettings"
 * Outputs "SaveLR Settings" as an indication of what was done.
 * 
 * Debugging option is on line 18, and outputs what was grabbed and stored in "_settings". Simply uncomment to enable, comment it out to disable.
 *      Default: Disabled
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call CHTR_TFAR_fnc_saveLRSettings
 *
 * Public: No
 */
 
 _settings = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings;
    profileNamespace setVariable ["arf_setter_settings", _settings];
    systemChat "Saved LR Settings";
//	systemChat format["%1", _settings];