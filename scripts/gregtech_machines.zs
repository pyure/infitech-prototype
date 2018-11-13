import mods.gregtech.recipe.RecipeMap;
val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");

// Redstone dust -> Destabilized redstone
fluid_extractor.recipeBuilder().inputs([<ore:dustRedstone> * 1]).fluidOutputs([<liquid:redstone> * 144 ]).duration(120).EUt(24).buildAndRegister();
