#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Block;
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


// FLUIDS
var uranium_hexafluoride = mods.contenttweaker.VanillaFactory.createFluid("uranium_hexafluoride", "2142779");
uranium_hexafluoride.density = 100;
uranium_hexafluoride.viscosity = 100;
uranium_hexafluoride.register();

var fermented_biomass = mods.contenttweaker.VanillaFactory.createFluid("fermented_biomass", "4478208");
fermented_biomass.density = 100;
fermented_biomass.viscosity = 100;
fermented_biomass.register();

var ammonia = mods.contenttweaker.VanillaFactory.createFluid("ammonia", "4142208");
ammonia.density = 100;
ammonia.viscosity = 100;
ammonia.register();

var fish_oil = mods.contenttweaker.VanillaFactory.createFluid("fish_oil", "16761856");
fish_oil.density = 100;
fish_oil.viscosity = 100;
fish_oil.register();

