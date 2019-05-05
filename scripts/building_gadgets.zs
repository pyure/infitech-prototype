var buildingtool = <buildinggadgets:buildingtool>;
var exchangertool = <buildinggadgets:exchangertool>;
var copypastetool = <buildinggadgets:copypastetool>;
var destructiontool = <buildinggadgets:destructiontool>;


// Destruction gadget can currently be exploited, and blacklist doesn't seem to be working.
// https://github.com/Direwolf20-MC/BuildingGadgets/issues/292
scripts.functions.disableItem(destructiontool); 