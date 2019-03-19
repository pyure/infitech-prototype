recipes.remove(<ffs:block_fluid_valve>);

var craftingToolWrenchEmptyTag = <ore:craftingToolWrench>.firstItem.withEmptyTag();
  
recipes.addShaped("infitech2_block_fluid_valve", 
  <ffs:block_fluid_valve>, [[<ore:plateWroughtIron>, <ore:pipeSmallBronze>, <ore:plateWroughtIron>], [<ore:stickWroughtIron>, craftingToolWrenchEmptyTag, <ore:stickWroughtIron>], [<ore:plateWroughtIron>, <ore:pipeSmallBronze>, <ore:plateWroughtIron>]]);
