#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Block;
import mods.contenttweaker.IBlockAction;
import mods.contenttweaker.World;
import mods.contenttweaker.BlockPos;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.Item;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.IItemDestroySpeed;
import mods.contenttweaker.IItemDestroyedBlock;
import crafttweaker.data.IData;


var compressed_coal_ball = VanillaFactory.createItem("compressed_coal_ball");
compressed_coal_ball.maxStackSize = 64;
compressed_coal_ball.register();

var coal_chunk = VanillaFactory.createItem("coal_chunk");
coal_chunk.maxStackSize = 64;
coal_chunk.register();

var coal_ball = VanillaFactory.createItem("coal_ball");
coal_ball.maxStackSize = 64;
coal_ball.register();

var grindy_comb = VanillaFactory.createItem("grindy_comb");
grindy_comb.maxStackSize = 64;
grindy_comb.register();

var basic_reactor_plate_hot = VanillaFactory.createItem("basic_reactor_plate_hot");
basic_reactor_plate_hot.maxStackSize = 64;
basic_reactor_plate_hot.register();

var helium_infused_dilithium_dust = VanillaFactory.createItem("helium_infused_dilithium_dust");
helium_infused_dilithium_dust.maxStackSize = 64;
helium_infused_dilithium_dust.register();

var research_book = VanillaFactory.createItem("research_book");
research_book.maxStackSize = 1;
research_book.register();

var botany_data = VanillaFactory.createItem("botany_data");
botany_data.maxStackSize = 64;
botany_data.register();

// Fire Bow
var item = VanillaFactory.createItem("fire_bow");
item.maxStackSize = 1;
item.maxDamage = 50;
item.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var firePos = pos.getOffset(facing, 1);
    if (world.getBlockState(firePos).isReplaceable(world, firePos)) {
        if (world.time % 10 == 0) {
          world.setBlockState(<block:minecraft:fire>, firePos);
        }
        player.getHeldItem(hand).damage(1, player);
        return ActionResult.success();
    }

    return ActionResult.pass();
};  
item.register();

var luna_dimension = 3; // May change, we've seen 2 in the past.  

// Moon Soil.  Move to appropriate file when sober.
var moonSoilBlock = VanillaFactory.createBlock("moon_soil", <blockmaterial:ground>);
moonSoilBlock.setBlockHardness(0.5);
moonSoilBlock.setBlockHardness(2.5);
moonSoilBlock.setToolClass("shovel");
moonSoilBlock.setToolLevel(0);
moonSoilBlock.setFullBlock(false);
moonSoilBlock.setBlockSoundType(<soundtype:ground>);
moonSoilBlock.onRandomTick = function(world, blockPos, blockState) {
    if (world.getDimension() != 3) {
        world.setBlockState(<block:advancedrocketry:moonturf>, blockPos);
    }
};
moonSoilBlock.register();

// FLUIDS
var liquid_oxygen = VanillaFactory.createFluid("liquid_oxygen", 9425151); // Defined via ContentTweaker because it seems to play nicer with Adv. Rocketry planet worldgen
liquid_oxygen.temperature = 90;
liquid_oxygen.density = 1141;
liquid_oxygen.viscosity = 250;
liquid_oxygen.register();
