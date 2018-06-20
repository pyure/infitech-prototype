import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// Removing block crafting recipes
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(<factorytech:oreblock>);
recipes.remove(<factorytech:oreblock:1>);
recipes.remove(<factorytech:oreblock:2>);
recipes.remove(<factorytech:oreblock:3>);