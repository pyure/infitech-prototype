import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// GT Style gear crafting
recipes.remove(<advancedrocketry:productgear:0>);
recipes.addShaped(<advancedrocketry:productgear:0>, [
	[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>],
	[<ore:plateTitaniumAluminide>, <ore:craftingToolScrewdriver>, <ore:plateTitaniumAluminide>],
	[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>]]);

recipes.remove(<advancedrocketry:productgear:1>);
recipes.addShaped(<advancedrocketry:productgear:1>, [
	[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>],
	[<ore:plateTitaniumIridium>, <ore:craftingToolScrewdriver>, <ore:plateTitaniumIridium>],
	[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>]]);

// Removing gears that have GT counterpart
recipes.remove(<libvulpes:productgear:6>);
recipes.remove(<libvulpes:productgear:7>);

// GT Style Rod crafting
recipes.remove(<advancedrocketry:productrod>);
recipes.addShaped(<advancedrocketry:productrod>, [
	[<ore:craftingToolFile>, null],
	[null, <ore:ingotTitaniumAluminide>]]);
recipes.remove(<advancedrocketry:productrod:1>);
recipes.addShaped(<advancedrocketry:productrod:1>, [
	[<ore:craftingToolFile>, null],
	[null, <ore:ingotTitaniumIridium>]]);

// Removing rods that have GT counterpart
recipes.remove(<libvulpes:productrod:1>);
recipes.remove(<libvulpes:productrod:4>);
recipes.remove(<libvulpes:productrod:6>);
recipes.remove(<libvulpes:productrod:7>);
recipes.remove(<libvulpes:productrod:10>);

