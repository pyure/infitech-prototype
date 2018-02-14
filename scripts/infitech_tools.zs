
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


//TODO: Remove that ugly crutch
var oreFlintIngot = <ore:ingotFlint>;  // name is a bit silly but makes it simpler to add dynamic recipes
oreFlintIngot.add(<minecraft:flint>);
var oreFlint = <ore:Flint>;  // name is a bit silly but makes it simpler to add dynamic recipes
oreFlint.add(<minecraft:flint>);
var oreFlintPlate = <ore:plateFlint>;  // name is a bit silly but makes it simpler to add dynamic recipes
oreFlintPlate.add(<minecraft:flint>);

val mortars = {
		flint : <contenttweaker:flint_mortar>, 
		bronze : <contenttweaker:bronze_mortar>,
		iron : <contenttweaker:iron_mortar>,
		steel : <contenttweaker:steel_mortar>
	}	as IItemStack[string];
val saws = {
		flint : <contenttweaker:flint_saw>,  
		bronze : <contenttweaker:bronze_saw>,
		iron : <contenttweaker:iron_saw>,
		steel : <contenttweaker:steel_saw>
	}	as IItemStack[string];
val hammers = {
		flint : <contenttweaker:flint_hammer>,  
		bronze : <contenttweaker:bronze_hammer>,
		iron : <contenttweaker:iron_hammer>,
		steel : <contenttweaker:steel_hammer>
	}	as IItemStack[string];
val wrenches = {
		flint : <contenttweaker:flint_wrench>,  
		bronze : <contenttweaker:bronze_wrench>,
		iron : <contenttweaker:iron_wrench>,
		steel : <contenttweaker:steel_wrench>
	} as IItemStack[string];
val files = {
		flint : <contenttweaker:flint_file>,
		bronze : <contenttweaker:bronze_file>,
		iron : <contenttweaker:iron_file>,
		steel : <contenttweaker:steel_file>
	}	as IItemStack[string];
val plates = {
		flint : <ore:plateFlint>,
		bronze : <ore:plateBronze>,
		iron : <ore:plateIron>,
		steel : <ore:plateSteel>
	}	as IOreDictEntry[string];
val ingots = {
		flint : <ore:ingotFlint>,
		bronze : <ore:ingotBronze>,
		iron : <ore:ingotIron>,
		steel : <ore:ingotSteel>
	}	as IOreDictEntry[string];


// TODO: do it nicer somehow
for key in ingots {
	// MORTARS
	recipes.addShaped(mortars[key], [[null, ingots[key], null], 
	[<ore:stone>, ingots[key], <ore:stone>], 
	[<ore:stone>,<ore:stone>,<ore:stone>]]);
	// SAWS
	recipes.addShaped(saws[key], [[plates[key], plates[key], <ore:stickWood>], 
	[null, null, null], 
	[null,null,null]]);
	// HAMMERS
	recipes.addShaped(hammers[key], [[ingots[key], ingots[key], null], 
    [ingots[key], ingots[key], <ore:stickWood>], 
    [ingots[key],ingots[key],null]]);
	// WRENCHES
	recipes.addShaped(wrenches[key], [[ingots[key], null, ingots[key]], 
    [ingots[key], ingots[key], ingots[key]], 
    [null,ingots[key],null]]);
	// FILES
	recipes.addShaped(files[key], [[null,plates[key],null],
	[null,plates[key],null],
	[null,<ore:stickWood>,null]]);
}


//old stupid code
/*
recipes.addShaped(<contenttweaker:flint_mortar>, [[null, <minecraft:flint>, null], 
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
*/