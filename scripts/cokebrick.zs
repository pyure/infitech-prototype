#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var cokebrick = VanillaFactory.createBlock("cokebrick", <blockmaterial:rock>);
cokebrick.setBlockHardness(2);
cokebrick.setBlockResistance(2.7);
cokebrick.setToolClass("pickaxe");
cokebrick.setToolLevel(2);
cokebrick.setBlockSoundType(<soundtype:stone>);
cokebrick.register();