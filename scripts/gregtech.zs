import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

// BRONZE
var oreDustBronze = <ore:dustBronze>;
var firstDust = oreDustBronze.firstItem;


for item in oreDustBronze.items {
    recipes.remove(item * 4);
}

recipes.addShapeless(firstDust * 3, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);