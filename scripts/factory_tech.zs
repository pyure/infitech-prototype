import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// Removing block crafting recipes
val compressor as RecipeMap = RecipeMap.getByName("compressor");

var blockCopper = <factorytech:oreblock>;
var blockNickel = <factorytech:oreblock:1>;
var blockCupronickel = <factorytech:oreblock:2>;
var blockInvar = <factorytech:oreblock:3>;

recipes.remove(blockCopper);
recipes.remove(blockNickel);
recipes.remove(blockCupronickel);
recipes.remove(blockInvar);