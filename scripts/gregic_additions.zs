import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemTransformer;
import mods.gregtech.recipe.RecipeMap;

//GT Machines
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
val cutting_saw as RecipeMap = RecipeMap.getByName("cutting_saw");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
val fluid_solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");
val mixer as RecipeMap = RecipeMap.getByName("mixer");
val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");
val macerator as RecipeMap = RecipeMap.getByName("macerator");
val fermenter as RecipeMap = RecipeMap.getByName("fermenter");
val packer as RecipeMap = RecipeMap.getByName("packer");
val assembler as RecipeMap = RecipeMap.getByName("assembler");

// Disable the Dynamite recipe that is very confused with TNT
chemical_reactor.findRecipe(126, [<minecraft:string>, <minecraft:paper>], [<liquid:glyceryl> * 500]).remove();

var drumBronze = <gregtech:machine:2196>;
var drumSteel = <gregtech:machine:2197>;
var drumStainlessSteel = <gregtech:machine:2198>;
var drumTitanium = <gregtech:machine:2199>;
var drumTungstenSteel = <gregtech:machine:2200>;

// New Bronze
recipes.remove(drumBronze);
assembler.recipeBuilder()
  .inputs(<ore:plateCurvedBronze> * 4, <ore:ringBronze> * 2, <ore:boltBronze> * 4)
  .outputs(drumBronze * 1)
  .duration(160)
  .EUt(32)
  .buildAndRegister();

// New Steel
recipes.remove(drumSteel);
assembler.recipeBuilder()
  .inputs(<ore:plateCurvedSteel> * 4, <ore:ringSteel> * 2, <ore:boltSteel> * 4)
  .outputs(drumSteel * 1)
  .duration(160)
  .EUt(128)
  .buildAndRegister();
  
  
// New StainlessSteel
recipes.remove(drumStainlessSteel);
assembler.recipeBuilder()
  .inputs(<ore:plateCurvedStainlessSteel> * 4, <ore:ringStainlessSteel> * 2, <ore:boltStainlessSteel> * 4)
  .outputs(drumStainlessSteel * 1)
  .duration(160)
  .EUt(512)
  .buildAndRegister();
  
  
// New Titanium
recipes.remove(drumTitanium);
assembler.recipeBuilder()
  .inputs(<ore:plateCurvedTitanium> * 4, <ore:ringTitanium> * 2, <ore:boltTitanium> * 4)
  .outputs(drumTitanium * 1)
  .duration(160)
  .EUt(2048)
  .buildAndRegister();
  
  
// New TungstenSteel
recipes.remove(drumTungstenSteel);
assembler.recipeBuilder()
  .inputs(<ore:plateCurvedTungstenSteel> * 4, <ore:ringTungstenSteel> * 2, <ore:boltTungstenSteel> * 4)
  .outputs(drumTungstenSteel * 1)
  .duration(160)
  .EUt(8192)
  .buildAndRegister();