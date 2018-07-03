import mods.gregtech.recipe.RecipeMap;
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");

chemical_reactor.recipeBuilder()
.inputs([<ore:crushedBrownLimonite> * 3, <gendustry:honey_comb:125> * 4])
.fluidInputs([<liquid:water> * 1000 ])
.outputs(<ore:crushedPurifiedBrownLimonite> * 4)
.duration(60)
.EUt(30)
.buildAndRegister();

/*



val blast_furnace as RecipeMap = RecipeMap.getByName("blast_furnace");

blast_furnace.recipeBuilder()
          .inputs([<ore:ingotCompressedWroughtIron> * 1, <ore:charcoal> * 3])
          .outputs(<ore:ingotIron>.firstItem * 1)
          .duration(80)
          .EUt(0)
          .buildAndRegister();
          
val canner as RecipeMap = RecipeMap.getByName("canner");

canner.recipeBuilder()
    .inputs([<ore:foilGold>, <ore:dustCocoa> * 2])
    .outputs([<metaitem:coin.chocolate> * 12])
    .duration(40).EUt(30)
    .buildAndRegister();
*/

/*  
    
val chemicalreactor as RecipeMap = RecipeMap.getByName("chemicalreactor");    
    
chemicalreactor.recipeBuilder()
.inputs([<ore:foilGold>])
.fluidInputs([<liquid:liquid.nitrogen_dioxide>, ])
.fluidOutputs(<liquid:liquid.nitrogen_dioxide> * 400)
.outputs(<ore:dustCocoa> * 2)
.duration(950)
.EUt(30)
.buildAndRegister();
*/




