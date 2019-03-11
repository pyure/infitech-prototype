
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.VanillaFactory;

var stick = <minecraft:stick>;
var flint = <minecraft:flint:0>;



var nuggetWroughtIron = <gregtech:meta_item_1:9197>;
furnace.addRecipe(nuggetWroughtIron, <ore:nuggetIron>);

// VANILLA TNT
recipes.remove(<minecraft:tnt> * 1);


// OREDICT

var oreFlint = <ore:ingotFlint>;  // name is a bit silly but makes it simpler to add dynamic recipes
oreFlint.add(<minecraft:flint>);

var oreSaw = <ore:craftingToolSaw>;

// ALTERNATIVE CHEST RECIPES
 recipes.addShaped(<minecraft:chest>*4, [
  [<ore:logWood>, <ore:logWood>, <ore:logWood>], 
  [<ore:logWood>, <ore:craftingToolSaw>, <ore:logWood>], 
  [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
  
 //Logs to sticks
recipes.addShapedMirrored(<minecraft:stick>*4, [[<ore:logWood>], [<ore:logWood>]]);
recipes.addShapedMirrored(<minecraft:stick>*8, [[oreSaw], [<ore:logWood>], [<ore:logWood>]]);
