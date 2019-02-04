#priority 100

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;

/* ===== Daclaring variables ===== */

//Ingot
var ingotSteelGt = <ore:ingotSteelGt>;


//Dust
var dustBronzeGt = <ore:dustBronzeGt>;
var dustEnderiumGt = <ore:dustEnderiumGt>;
var dustSignalumGt = <ore:dustSignalumGt>;
var dustSaltpeterGt = <ore:dustSaltpeterGt>;
var fuelCoke = <ore:fuelCoke>;


/* =====Adding Items===== */

//Ingot
ingotSteelGt.add(<gregtech:meta_item_1:10184>);

//Dust
dustBronzeGt.add(<gregtech:meta_item_1:2095>);
dustEnderiumGt.add(<gregtech:meta_item_1:2702>);
dustSignalumGt.add(<gregtech:meta_item_1:2703>);
dustSaltpeterGt.add(<gregtech:meta_item_1:2156>);
fuelCoke.add(<gregtech:meta_item_1:8997>);//this is the coke added by Gregic Additions. Up until now it was just "gemCoke" which disallowed it to be used in various machines. This exact script fixes this behavior.
