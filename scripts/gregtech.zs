import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemTransformer;
import mods.gregtech.recipe.RecipeMap;


//Electric Blast Furnace
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
blast_furnace.findRecipe(120, [<minecraft:iron_ingot> * 1], [<liquid:oxygen> * 1000]).remove();
blast_furnace.findRecipe(120, [<ore:ingotWroughtIron>.firstItem * 1], [<liquid:oxygen> * 1000]).remove();
blast_furnace.findRecipe(120, [<ore:ingotPigIron>.firstItem * 1], [<liquid:oxygen> * 1000]).remove();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotCompressedWroughtIron> * 1)
	.fluidInputs([<liquid:oxygen> * 500])
	.outputs(<ore:ingotSteel>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 1)
	.property("temperature", 1000)
	.duration(480)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotWroughtIron> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteel>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 2)
	.property("temperature", 1000)
	.duration(560)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotPigIron> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteel>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 2)
	.property("temperature", 1000)
	.duration(560)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<minecraft:iron_ingot> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteel>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 3)
	.property("temperature", 1000)
	.duration(800)
	.EUt(120)
	.buildAndRegister();

/* EXAMPLES */
/* https://github.com/GregTechCE/GregTech/blob/d99dbaede94f2d622ad56ed05ead32fd85106b45/src/main/java/gregtech/api/recipes/RecipeMaps.java */


// BRONZE
var oreDustBronze = <ore:dustBronze>;
var firstDust = oreDustBronze.firstItem;
for item in oreDustBronze.items {
    recipes.remove(item * 4);
}
recipes.addShapeless(firstDust * 3, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

// Stick + Rubber => 3 Torches
var rubber = <metaitem:rubber_drop>;
recipes.addShaped(<minecraft:torch> * 3, [[null, rubber, null], [null, <ore:stickWood>, null], [null, null, null]]);


// DIAMONDS FROM COAL
var diamond = <minecraft:diamond>;
var compressed_coal_ball = <contenttweaker:compressed_coal_ball>;
var coal_chunk = <contenttweaker:coal_chunk>;
var coal_ball = <contenttweaker:coal_ball>;
var coal_dust = <ore:dustCoal>;
var flint = <minecraft:flint>;

val compressor as RecipeMap = RecipeMap.getByName("compressor");
    
recipes.addShaped(coal_ball, [
  [coal_dust, coal_dust, coal_dust],
  [coal_dust, flint, coal_dust],
  [coal_dust, coal_dust, coal_dust]]);
  
recipes.addShaped(coal_chunk, [
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball],
  [compressed_coal_ball, <minecraft:obsidian>, compressed_coal_ball],
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball]]);
     
recipes.addShaped(coal_chunk, [
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball],
  [compressed_coal_ball, <minecraft:brick_block>, compressed_coal_ball],
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball]]);
    
recipes.addShaped(coal_chunk, [
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball],
  [compressed_coal_ball, <ore:blockIron>, compressed_coal_ball],
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball]]);
  
compressor.recipeBuilder()
	.inputs(coal_ball)
	.outputs(compressed_coal_ball)
	.duration(440)
  .EUt(12)
	.buildAndRegister();
  
compressor.recipeBuilder()
	.inputs(coal_chunk)
	.outputs(diamond)
	.duration(440)
  .EUt(12)
	.buildAndRegister();


var resonating_ore = <deepresonance:resonating_ore>;
var resonating_plate = <deepresonance:resonating_plate>;
var resonating_plate_block = <deepresonance:resonating_block>;

furnace.remove(<deepresonance:resonating_plate> * 8, <deepresonance:resonating_ore:0>);
furnace.remove(<deepresonance:resonating_plate> * 8, <deepresonance:resonating_ore:1>);
furnace.remove(<deepresonance:resonating_plate> * 8, <deepresonance:resonating_ore:2>);

furnace.remove(<deepresonance:resonating_plate> , <deepresonance:resonating_ore:0>);
furnace.remove(<deepresonance:resonating_plate> , <deepresonance:resonating_ore:1>);
furnace.remove(<deepresonance:resonating_plate> , <deepresonance:resonating_ore:2>);

val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
electrolyzer.recipeBuilder()
	.inputs(resonating_ore)
	.outputs(resonating_plate_block)
	.duration(820)
  .EUt(2)
	.buildAndRegister();

val cutting_saw as RecipeMap = RecipeMap.getByName("cutting_saw");
cutting_saw.recipeBuilder()
	.inputs(resonating_plate_block)
	.outputs(resonating_plate * 9)
	.duration(420)
  .EUt(2)
  .buildAndRegister();

compressor.findRecipe(2, [<minecraft:redstone>], null).remove();

val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
chemical_reactor.recipeBuilder()
	.fluidInputs([<liquid:copper> * 144, <liquid:redstone> * 288])
	.fluidOutputs([<liquid:red_alloy> * 144])
	.duration(100)
	.EUt(512)
	.buildAndRegister();
