recipes.remove(<harvestcraft:grinder>);
recipes.addShaped("it3_harvestcraft_grinder", <harvestcraft:grinder>, [
  [<ore:ingotIron>, <ore:toolHeadSwordIron>, <ore:ingotIron>], 
  [<ore:ingotIron>, null, <ore:ingotIron>], 
  [<ore:ingotIron>, <minecraft:repeater>, <ore:ingotIron>]]);

  
// Paper with Pams Water
recipes.addShapeless("it3_pams_paper", <minecraft:paper> * 2, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:listAllwater>]);