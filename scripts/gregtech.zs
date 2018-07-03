import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemTransformer;


// BRONZE
var oreDustBronze = <ore:dustBronze>;
var firstDust = oreDustBronze.firstItem;


for item in oreDustBronze.items {
    recipes.remove(item * 4);
}

recipes.addShapeless(firstDust * 3, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

var bucketWater = <minecraft:water_bucket>;
var dustSulur = <gregtech:meta_item_1:2065>;
var dustImpureSulfur = <ore:dustImpureSulfur>;

var bucketReturned = bucketWater.transformNew(function(item){
  return item;
});



recipes.addShapeless(dustSulur * 1, [bucketReturned, dustImpureSulfur]);