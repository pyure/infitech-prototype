import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;

import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;



var tungstensteel_casing = <metastate:gregtech:metal_casing:7>;
var tungstensteel_coil = <metastate:gregtech:wire_coil:3>;
var hardened_iridium_glass = <thermalfoundation:glass:7>;
var nichrome_coil = <metastate:gregtech:wire_coil:2>;
var ruby_block = <metastate:gregtech:compressed_7:8>;

/* SEE TEXTURE OPTIONS AT https://github.com/GregTechCE/GregTech/blob/b9102089cf50be59caf885c8b02094c39edb7629/src/main/java/gregtech/api/render/Textures.java */

val inBiome as IBlockMatcher = function (state as IBlockWorldState) as bool {
    val biome = state.getWorld().getBiome(state.getPos()).id;
    return biome == "advancedrocketry:moon" || biome == "advancedrocketry:moondark" || state.getWorld().getDimension() == 2147483647;
};


var id = 2049; // More or less arbitrary id # to start with
var unlocalized_name = "low_gravity_reactor";
/* STRUCTURE: In a RIGHT, BACK, UP pattern, the first aisle represents the bottom slice of the multiblock, with the bottom row representing the "front" */			
val low_gravity_reactor = Builder.start(unlocalized_name, id)
	.withPattern(
		FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
			.aisle(
					"AIA",
					"AOA",
					"A#A")
			.aisle(
					" F ",
					"G G",
					" G ")
			.aisle(
					" F ",
					"G G",
					" G ")
			.aisle(
					" F ",
					"G G",
					" G ")					
			.aisle(
					" C ",
					"COC",
					" C ")													
			.where('#', IBlockMatcher.controller(unlocalized_name))
			.where('C', tungstensteel_casing)
			.whereOr('A', 	tungstensteel_casing, 
							IBlockMatcher.abilityPartPredicate(
								MultiblockAbility.INPUT_ENERGY,
								MultiblockAbility.IMPORT_ITEMS,
								MultiblockAbility.IMPORT_FLUIDS
								))
			.where('O', tungstensteel_coil)								
			.where('G', hardened_iridium_glass)
			.where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_ITEMS))
			.where('F', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_FLUIDS))
			.where('N', nichrome_coil)
			.build())
	.addDesign(
		/* 
			** DESIGN/JEI: the first aisle is always the face of the structure as viewed from the left...upside down, because fuck users. 
			Near as we can figure, we're standing north, facing south.  Therefore blocks in top aisle need to point north to face us.
			The right side is east, the left side is west.
		*/
		FactoryMultiblockShapeInfo.start()
			.aisle(
					"CCI",
					" G ",
					" G ",
					" G ",
					" C ")
			.aisle(
					"#OE",
					"G F",
					"G F",
					"G F",
					"COC")
			.aisle(
					"HHH",
					" G ",
					" G ",
					" G ",
					" C ")
					
			.where('#', IBlockInfo.controller(unlocalized_name))
			.where('C', tungstensteel_casing)
			.where('H', MetaTileEntities.FLUID_IMPORT_HATCH[4], IFacing.south())
			.where('E', MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
			.where('F', MetaTileEntities.FLUID_EXPORT_HATCH[4], IFacing.east())
			.where('I', MetaTileEntities.ITEM_IMPORT_BUS[4], IFacing.north())
			.where('G', hardened_iridium_glass)
			.where('O', tungstensteel_coil)
			.build())
	.withRecipeMap(
		FactoryRecipeMap.start(unlocalized_name)
						.maxFluidInputs(3)
						.maxInputs(2)
						.maxFluidOutputs(3)
						.maxOutputs(1)
						.build())
	.withTexture(Textures.ROBUST_TUNGSTENSTEEL_CASING)
	.buildAndRegister();
	

// Helium-infused dilithium dust recipe.	
low_gravity_reactor.recipeMap
    .recipeBuilder()
    .duration(12400)
	.EUt(3072)
    .inputs([<ore:dustDilithium> * 1, <ore:ingotUranium235>])
    .fluidInputs(<liquid:helium3> * 500)	
    .outputs(<contenttweaker:helium_infused_dilithium_dust>)
    .buildAndRegister();	
low_gravity_reactor.recipeMap
    .recipeBuilder()
    .duration(4400) 
	.EUt(2048)
    .inputs([<ore:dustDilithium> * 1, <ore:ingotCurium246>])
    .fluidInputs(<liquid:helium3> * 500)	
    .outputs(<contenttweaker:helium_infused_dilithium_dust>)
    .buildAndRegister();	
	
