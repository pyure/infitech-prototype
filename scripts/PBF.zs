import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemTransformer;
import mods.gregtech.recipe.PBFRecipeBuilder;
import mods.gregtech.recipe.RecipeMaps;

//Remove recipes from PBF
for recipe in RecipeMaps.getPrimitiveBlastFurnaceRecipes() {
    recipe.remove();
}

//Primitive Blast furnace
PBFRecipeBuilder.start()
    .input(<ore:ingotCompressedWroughtIron> * 1)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(2000)
    .fuelAmount(1)
    .buildAndRegister();

PBFRecipeBuilder.start()
    .input(<ore:ingotWroughtIron> * 1)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(3600)
    .fuelAmount(2)
    .buildAndRegister();

PBFRecipeBuilder.start()
    .input(<minecraft:iron_ingot> * 1)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(4200)
    .fuelAmount(3)
    .buildAndRegister();

//Changing PBF recipe
var primitive_brick = <gregtech:metal_casing:1>;
var pbf = <gregtech:machine:510>;
var foundry_clay = <foundry:component:1>;

recipes.remove(pbf);
recipes.addShaped(pbf, [
   [primitive_brick, <minecraft:nether_brick>, primitive_brick],
   [<minecraft:furnace>, <ore:craftingToolWrench>, <minecraft:furnace>],
   [primitive_brick, <minecraft:nether_brick>, primitive_brick]]);

recipes.remove(primitive_brick);
recipes.addShaped(primitive_brick, [
   [<minecraft:brick>, <ore:craftingToolHardHammer>, <minecraft:brick>],
   [<minecraft:netherbrick>, <minecraft:nether_brick>, <minecraft:netherbrick>],
   [<minecraft:brick>, foundry_clay, <minecraft:brick>]]);