import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// These are covered by GT meta tools
recipes.remove(<minecraft:wooden_pickaxe>);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:golden_pickaxe>);
recipes.remove(<minecraft:iron_pickaxe>);

recipes.remove(<minecraft:wooden_shovel>);
recipes.remove(<minecraft:stone_shovel>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:golden_shovel>);
recipes.remove(<minecraft:iron_shovel>);

recipes.remove(<minecraft:wooden_sword>);
recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:iron_sword>);

recipes.remove(<minecraft:wooden_axe>);
recipes.remove(<minecraft:stone_axe>);
recipes.remove(<minecraft:diamond_axe>);
recipes.remove(<minecraft:golden_axe>);
recipes.remove(<minecraft:iron_axe>);


var charcoal = <minecraft:coal:1>;
var tinyCharcoal = <cttinycoal:tiny_charcoal>;
furnace.remove(charcoal, <ore:logWood>);

furnace.addRecipe(tinyCharcoal, <ore:logWood>);




//PISTONS
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotIron>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped(<minecraft:piston>*2, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotSteel>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped(<minecraft:piston>*4, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotAluminium>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped(<minecraft:piston>*8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotTitanium>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped(<minecraft:piston>*16, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotTungstenSteel>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped(<minecraft:piston>*32, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotNaquadah>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);