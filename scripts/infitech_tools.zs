
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;



var mortar_flint = <contenttweaker:flint_mortar>;  
var mortar_bronze = <contenttweaker:bronze_mortar>;
var mortar_iron = <contenttweaker:iron_mortar>;
var mortar_steel = <contenttweaker:steel_mortar>;
var saw_flint = <contenttweaker:flint_saw>;  
var saw_bronze = <contenttweaker:bronze_saw>;
var saw_iron = <contenttweaker:iron_saw>;
var saw_steel = <contenttweaker:steel_saw>;
var hammer_flint = <contenttweaker:flint_hammer>;  
var hammer_bronze = <contenttweaker:bronze_hammer>;
var hammer_iron = <contenttweaker:iron_hammer>;
var hammer_steel = <contenttweaker:steel_hammer>;
var wrench_flint = <contenttweaker:flint_wrench>;  
var wrench_bronze = <contenttweaker:bronze_wrench>;
var wrench_iron = <contenttweaker:iron_wrench>;
var wrench_steel = <contenttweaker:steel_wrench>;
val tools = {
	files = {
		flint : <contenttweaker:flint_file>,
		bronze : <contenttweaker:bronze_file>,
		iron : <contenttweaker:iron_file>,
		steel : <contenttweaker:steel_file>
	}
}

// MORTARS
recipes.addShaped(mortar_flint, [[null, <minecraft:flint>, null], 
  [<ore:stone>, <minecraft:flint>, <ore:stone>], 
  [<ore:stone>,<ore:stone>,<ore:stone>]]);
recipes.addShaped(mortar_bronze, [[null, <ore:ingotBronze>, null], 
  [<ore:stone>, <ore:ingotBronze>, <ore:stone>], 
  [<ore:stone>,<ore:stone>,<ore:stone>]]);
recipes.addShaped(mortar_iron, [[null, <ore:ingotIron>, null], 
  [<ore:stone>, <ore:ingotIron>, <ore:stone>], 
  [<ore:stone>,<ore:stone>,<ore:stone>]]);
recipes.addShaped(mortar_steel, [[null, <ore:ingotSteel>, null], 
  [<ore:stone>, <ore:ingotSteel>, <ore:stone>], 
  [<ore:stone>,<ore:stone>,<ore:stone>]]);

// SAWS
recipes.addShaped(saw_flint, [[<minecraft:flint>, <minecraft:flint>, <ore:stickWood>], 
  [null, null, null], 
  [null,null,null]]);
recipes.addShaped(saw_bronze, [[<ore:plateBronze>, <ore:plateBronze>, <ore:stickWood>], 
  [null, null, null], 
  [null,null,null]]);
recipes.addShaped(saw_iron, [[<ore:plateIron>, <ore:plateIron>, <ore:stickWood>], 
  [null, null, null], 
  [null,null,null]]);
recipes.addShaped(saw_steel, [[<ore:plateSteel>, <ore:plateSteel>, <ore:stickWood>], 
  [null, null, null], 
  [null,null,null]]);

// HAMMERS
recipes.addShaped(hammer_flint, [[<minecraft:flint>, <minecraft:flint>, null], 
  [<minecraft:flint>, <minecraft:flint>, <ore:stickWood>], 
  [<minecraft:flint>,<minecraft:flint>,null]]);
recipes.addShaped(hammer_bronze, [[<ore:ingotBronze>, <ore:ingotBronze>, null], 
  [<ore:ingotBronze>, <ore:ingotBronze>, <ore:stickWood>], 
  [<ore:ingotBronze>,<ore:ingotBronze>,null]]);
recipes.addShaped(hammer_iron, [[<ore:ingotIron>, <ore:ingotIron>, null], 
  [<ore:ingotIron>, <ore:ingotIron>, <ore:stickWood>], 
  [<ore:ingotIron>,<ore:ingotIron>,null]]);
recipes.addShaped(hammer_steel, [[<ore:ingotSteel>, <ore:ingotSteel>, null], 
  [<ore:ingotSteel>, <ore:ingotSteel>, <ore:stickWood>], 
  [<ore:ingotSteel>,<ore:ingotSteel>,null]]);


// WRENCHES
recipes.addShaped(wrench_flint, [[<minecraft:flint>, null, <minecraft:flint>], 
  [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>], 
  [null,<minecraft:flint>,null]]);
recipes.addShaped(wrench_bronze, [[<ore:ingotBronze>, null, <ore:ingotBronze>], 
  [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], 
  [null,<ore:ingotBronze>,null]]);
recipes.addShaped(wrench_iron, [[<ore:ingotIron>, null, <ore:ingotIron>], 
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
  [null,<ore:ingotIron>,null]]);
recipes.addShaped(wrench_steel, [[<ore:ingotSteel>, null, <ore:ingotSteel>], 
  [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
  [null,<ore:ingotSteel>,null]]);
