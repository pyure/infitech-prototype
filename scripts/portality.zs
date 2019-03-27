import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");

recipes.remove(<portality:frame>);
assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 8, <ore:plateQuartzite> *4)
	.outputs(<portality:frame>)
	.duration(490)
	.EUt(250)
	.buildAndRegister();
  
  
recipes.remove(<portality:controller>);
assembler.recipeBuilder()
	.inputs(<portality:frame> * 4, <ore:boltDiamond> * 12, <ore:blockQuartzite> * 1, <ore:circuitExtreme> * 1)
	.outputs(<portality:controller>)
	.duration(960)
	.EUt(512)
	.buildAndRegister();

var dimensional_singularity = <magicbees:resource:13>;

recipes.remove(<portality:module_interdimensional>);
assembler.recipeBuilder()
	.inputs(<portality:frame> * 4, dimensional_singularity * 4, <ore:blockQuartzite> * 1)
	.outputs(<portality:module_interdimensional>)
	.duration(1620)
	.EUt(1900)
	.buildAndRegister();