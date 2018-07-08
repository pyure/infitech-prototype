import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// GT Style gear crafting
recipes.remove(<advancedrocketry:productgear:0>);
recipes.addShaped(<advancedrocketry:productgear:0>, [
	[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>],
	[<ore:plateTitaniumAluminide>, <ore:craftingToolScrewdriver>, <ore:plateTitaniumAluminide>],
	[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>]]);

recipes.remove(<advancedrocketry:productgear:1>);
recipes.addShaped(<advancedrocketry:productgear:1>, [
	[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>],
	[<ore:plateTitaniumIridium>, <ore:craftingToolScrewdriver>, <ore:plateTitaniumIridium>],
	[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>]]);

// Removing gears that have GT counterpart
recipes.remove(<libvulpes:productgear:6>);
recipes.remove(<libvulpes:productgear:7>);

// GT Style Rod crafting
recipes.remove(<advancedrocketry:productrod>);
recipes.addShaped(<advancedrocketry:productrod>, [
	[<ore:craftingToolFile>, null],
	[null, <ore:ingotTitaniumAluminide>]]);
recipes.remove(<advancedrocketry:productrod:1>);
recipes.addShaped(<advancedrocketry:productrod:1>, [
	[<ore:craftingToolFile>, null],
	[null, <ore:ingotTitaniumIridium>]]);

// Removing rods that have GT counterpart
recipes.remove(<libvulpes:productrod:1>);
recipes.remove(<libvulpes:productrod:4>);
recipes.remove(<libvulpes:productrod:6>);
recipes.remove(<libvulpes:productrod:7>);
recipes.remove(<libvulpes:productrod:10>);

// GT Style Plate crafting
recipes.addShaped(<advancedrocketry:productplate>, [
	[<ore:craftingToolHardHammer>],
	[<ore:ingotTitaniumAluminide>],
	[<ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<advancedrocketry:productplate:1>, [
	[<ore:craftingToolHardHammer>],
	[<ore:ingotTitaniumIridium>],
	[<ore:ingotTitaniumIridium>]]);

// GT Style block crafting
var blockTitaniumIridium = <advancedrocketry:metal0:1>;
var blockTitaniumAlumide = <advancedrocketry:metal0>;
var blockAluminium = <libvulpes:metal0:9>;
var blockTitanium = <libvulpes:metal0:7>;
var blockSteel = <libvulpes:metal0:6>;
var blockTin = <libvulpes:metal0:5>;
var blockCopper = <libvulpes:metal0:4>;
var blockIridium = <libvulpes:metal0:10>;

recipes.remove(blockTitaniumIridium);
recipes.remove(blockTitaniumAlumide);

val compressor as RecipeMap = RecipeMap.getByName("compressor");

compressor.recipeBuilder()
	.inputs(<ore:ingotTitaniumIridium> * 9)
	.outputs(blockTitaniumIridium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotTitaniumAlumide> * 9)
	.outputs(blockTitaniumAlumide)
	.duration(400).EUt(2)
	.buildAndRegister();

recipes.remove(blockAluminium);
recipes.remove(blockTitanium);
recipes.remove(blockSteel);
recipes.remove(blockTin);
recipes.remove(blockCopper);
recipes.remove(blockIridium);

