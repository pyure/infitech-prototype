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
