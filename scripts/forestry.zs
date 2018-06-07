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

// Gears
recipes.removeShaped(<forestry:gear_bronze>, [
	[null, <ore:ingotBronze>, null],
	[<ore:ingotBronze>, <ore:ingotCopper>, <ore:ingotBronze>],
	[null, <ore:ingotBronze>, null]]);

recipes.removeShaped(<forestry:gear_copper>, [
	[null, <ore:ingotCopper>, null],
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
	[null, <ore:ingotCopper>, null]]);

recipes.removeShaped(<forestry:gear_tin>, [
	[null, <ore:ingotTin>, null],
	[<ore:ingotTin>, <ore:ingotCopper>, <ore:ingotTin>],
	[null, <ore:ingotTin>, null]]);