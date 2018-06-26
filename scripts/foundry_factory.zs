#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.IItemDestroySpeed;
import mods.contenttweaker.IItemDestroyedBlock;
import crafttweaker.data.IData;

// BLOCKS

// ITEMS
var pickaxe_head_mold = VanillaFactory.createItem("pickaxe_head_mold");
pickaxe_head_mold.maxStackSize = 64;
pickaxe_head_mold.register();

var hammer_head_mold = VanillaFactory.createItem("hammer_head_mold");
hammer_head_mold.maxStackSize = 64;
hammer_head_mold.register();