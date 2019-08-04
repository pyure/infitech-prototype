recipes.remove(<harvestcraft:grinder>);
recipes.addShaped("it3_harvestcraft_grinder", <harvestcraft:grinder>, [
  [<ore:ingotIron>, <ore:toolHeadSwordIron>, <ore:ingotIron>], 
  [<ore:ingotIron>, null, <ore:ingotIron>], 
  [<ore:ingotIron>, <minecraft:repeater>, <ore:ingotIron>]]);

var valid_water = <ore:listAllwater> | <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}});

// Paper with Pams Water
recipes.addShapeless("it3_pams_paper", <minecraft:paper> * 2, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, valid_water]);

// Let GT flour cooperate
<ore:foodFlour>.addAll(<ore:dustWheat>);