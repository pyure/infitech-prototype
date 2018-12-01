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

var grindy_comb = VanillaFactory.createItem("grindy_comb");
grindy_comb.maxStackSize = 64;
grindy_comb.register();


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
