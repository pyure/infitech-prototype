import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// These are covered by GT meta tools
recipes.remove(<forestry:bronze_pickaxe>);
recipes.remove(<forestry:bronze_shovel>);


// BRONZE
var dustBronze = <thermalfoundation:material:99>;

recipes.remove(dustBronze * 4);
recipes.addShapeless(dustBronze * 3, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

recipes.remove(<forestry:ingot_bronze> * 4);

// WOOD PILES
var woodPile = <forestry:wood_pile>;

recipes.remove(woodPile);
recipes.addShapeless(woodPile, [<ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>]);