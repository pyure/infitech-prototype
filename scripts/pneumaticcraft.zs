import mods.pneumaticcraft.pressurechamber;

var ingotWroughtIron = <ore:ingotWroughtIron>.firstItem;
var ingotCompressedWroughtIron = <contenttweaker:compressed_wrought_iron_ingot>;

mods.pneumaticcraft.pressurechamber.addRecipe([ingotWroughtIron * 1], 2.0, [<contenttweaker:compressed_wrought_iron_ingot>]);