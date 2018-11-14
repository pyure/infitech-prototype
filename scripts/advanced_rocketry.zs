import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;


val compressor as RecipeMap = RecipeMap.getByName("compressor");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
var basicMachineStructure = <libvulpes:structuremachine>;
var advancedMachineStructure = <libvulpes:advstructuremachine>;


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



// New Machine Structure recipes
recipes.remove(basicMachineStructure);
assembler.recipeBuilder()
  .inputs(<ore:plateStainlessSteel> * 4, <ore:stickStainlessSteel> * 4)
  .outputs(basicMachineStructure * 4)
  .duration(200)
  .EUt(512)
  .buildAndRegister();
  
recipes.remove(advancedMachineStructure);  
assembler.recipeBuilder()
  .inputs(<ore:plateTitanium> * 4, <ore:plateTitanium> * 4)
  .outputs(advancedMachineStructure * 4)
  .duration(200)
  .EUt(2048)
  .buildAndRegister();  
  
  
// Disable the Arc Furnace  
scripts.functions.disableItem(<advancedrocketry:arcfurnace>);

// Move ingots from Arc Furnace to Blast Furnace
var ingotTitaniumAluminide = <advancedrocketry:productingot>;
var ingotTitaniumIridiumAlloy = <advancedrocketry:productingot:1>;

blast_furnace.recipeBuilder()
	.inputs([<ore:ingotTitanium> * 3, <ore:ingotAluminium> * 7])
	.outputs(ingotTitaniumAluminide * 2)
	.property("temperature", 2800)
	.duration(220)
	.EUt(520)
	.buildAndRegister();
  
blast_furnace.recipeBuilder()
	.inputs([<ore:ingotIridium> * 1, <ore:ingotTitanium> * 1])
	.outputs(ingotTitaniumIridiumAlloy * 2)
	.property("temperature", 2800)
	.duration(220)
	.EUt(520)
	.buildAndRegister();
  
// Remove shapeless recipes for rods and plates
var rodTitaniumIridiumAlloy = <advancedrocketry:productrod:1>;
var rodTitaniumAluminide = <advancedrocketry:productrod>;
var plateTitaniumAluminide = <advancedrocketry:productplate>;
var plateTitaniumIridiumAlloy = <advancedrocketry:productplate:1>;

// Add GT Extruder recipe for rods
extruder.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:shape.extruder.rod>)
  .outputs(rodTitaniumAluminide * 2)
  .duration(160)
  .EUt(48)
  .buildAndRegister();  

extruder.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:shape.extruder.rod>)
  .outputs(rodTitaniumIridiumAlloy * 2)
  .duration(160)
  .EUt(48)
  .buildAndRegister();  

// Add GT Lathe recipe for rods
lathe.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .outputs(rodTitaniumAluminide * 1)
  .duration(160)
  .EUt(44)
  .buildAndRegister();  

lathe.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .outputs(rodTitaniumIridiumAlloy * 1)
  .duration(160)
  .EUt(44)
  .buildAndRegister();  

// Add GT Extruder recipe for plates
extruder.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:shape.extruder.plate>)
  .outputs(plateTitaniumAluminide * 1)
  .duration(160)
  .EUt(48)
  .buildAndRegister();  

extruder.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:shape.extruder.plate>)
  .outputs(plateTitaniumIridiumAlloy * 1)
  .duration(160)
  .EUt(48)
  .buildAndRegister();  

// Add GT Bender recipe for plates
metal_bender.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
  .outputs(plateTitaniumAluminide * 1)
  .duration(120)
  .EUt(42)
  .buildAndRegister();   
  
metal_bender.recipeBuilder()
  .inputs(<ore:ingotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
  .outputs(plateTitaniumIridiumAlloy * 1)
  .duration(120)
  .EUt(42)
  .buildAndRegister();     