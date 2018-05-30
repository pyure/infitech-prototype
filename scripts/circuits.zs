
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var cableBronze = <contenttweaker:bronze_cable>;
var circuitBasic = <contenttweaker:basic_circuit>;
var circuitBoardBasic = <contenttweaker:basic_circuit_board>;
var plateSteel = <ore:plateSteel>;
var wireTin = <ore:wireTin>;
var wireRedAlloy = <ore:wireRedAlloy>;
var chipNAND = <contenttweaker:nand_chip>;
var casingSteel = <contenttweaker:steel_casing>;
var transistor = <pneumaticcraft:transistor>;

recipes.addShaped(circuitBasic, [[cableBronze, chipNAND, cableBronze], 
	[cableBronze, plateSteel, cableBronze], 
	[cableBronze, chipNAND, cableBronze]]);
  
  
recipes.addShapeless(chipNAND, [wireTin, wireRedAlloy, wireRedAlloy, casingSteel]);
  

  
