import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

// Iron, Gold, Diamond, Copper, Silver, Crystal, Obsidian
var materials = [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12062>] as IItemStack[];

var iron_shulker_boxes = [<ironchest:iron_shulker_box_white>, <ironchest:iron_shulker_box_orange>, <ironchest:iron_shulker_box_magenta>, <ironchest:iron_shulker_box_light_blue>, <ironchest:iron_shulker_box_yellow>, <ironchest:iron_shulker_box_lime>, <ironchest:iron_shulker_box_pink>, <ironchest:iron_shulker_box_gray>, <ironchest:iron_shulker_box_silver>, <ironchest:iron_shulker_box_cyan>, <ironchest:iron_shulker_box_purple>, <ironchest:iron_shulker_box_blue>, <ironchest:iron_shulker_box_brown>, <ironchest:iron_shulker_box_green>, <ironchest:iron_shulker_box_red>, <ironchest:iron_shulker_box_black>] as IItemStack[];
var shulker_boxes = [<minecraft:white_shulker_box>, <minecraft:orange_shulker_box>,<minecraft:magenta_shulker_box>,<minecraft:light_blue_shulker_box>,<minecraft:yellow_shulker_box>,<minecraft:lime_shulker_box>,<minecraft:pink_shulker_box>,<minecraft:gray_shulker_box>,<minecraft:silver_shulker_box>,<minecraft:cyan_shulker_box>,<minecraft:purple_shulker_box>,<minecraft:blue_shulker_box>,<minecraft:brown_shulker_box>,<minecraft:green_shulker_box>,<minecraft:black_shulker_box>,<minecraft:black_shulker_box>] as IItemStack[];


for j, b in iron_shulker_boxes {
    var def = b.definition as IItemDefinition;
    var box = def.makeStack(0);
    recipes.remove(box);
    recipes.addShaped(box, [ [materials[0], <ore:blockGlass>, materials[0]], [<ore:blockGlass>, def.makeStack(3), <ore:blockGlass>], [materials[0], <ore:blockGlass>, materials[0] ] ]);
    recipes.addShaped(box, [ [materials[0],materials[0],materials[0]], [materials[0], shulker_boxes[j], materials[0]], [materials[0],materials[0],materials[0]] ]);


    box = def.makeStack(1);
    recipes.remove(box);
    recipes.addShaped(box, [ [materials[1], <ore:blockGlass>, materials[1]], [<ore:blockGlass>, def.makeStack(4), <ore:blockGlass>], [materials[1], <ore:blockGlass>, materials[1] ] ]);
    recipes.addShaped(box, [ [materials[1], materials[1], materials[1]], [materials[1], def.makeStack(0), materials[1]], [materials[1], materials[1], materials[1]] ]);

    box = def.makeStack(2);
    recipes.remove(box);
    recipes.addShaped(box, [ [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [materials[2], def.makeStack(1), materials[2]], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>] ]);
    recipes.addShaped(box, [ [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, def.makeStack(4), <ore:blockGlass>], [materials[2],materials[2],materials[2]] ]);

    box = def.makeStack(3);
    recipes.remove(box);
    recipes.addShaped(box, [ [materials[3], materials[3], materials[3]], [materials[3], shulker_boxes[j], materials[3]], [materials[3], materials[3], materials[3] ] ]);

    box = def.makeStack(4);
    recipes.remove(box);
    recipes.addShaped(box, [ [materials[4], <ore:blockGlass>, materials[4]], [<ore:blockGlass>, def.makeStack(0), <ore:blockGlass>], [materials[4], <ore:blockGlass>, materials[4] ] ]);
    recipes.addShaped(box, [ [materials[4], materials[4], materials[4]], [materials[4], def.makeStack(3), materials[4]], [materials[4], materials[4], materials[4] ] ]);
}

recipes.remove(<ironchest:vanilla_copper_shulker_upgrade>);
recipes.remove(<ironchest:vanilla_iron_shulker_upgrade>);
recipes.remove(<ironchest:iron_gold_shulker_upgrade>);
recipes.remove(<ironchest:copper_silver_shulker_upgrade>);
recipes.remove(<ironchest:gold_diamond_shulker_upgrade>);
recipes.remove(<ironchest:silver_gold_shulker_upgrade>);
recipes.remove(<ironchest:copper_silver_chest_upgrade>);
recipes.remove(<ironchest:wood_copper_chest_upgrade>);
recipes.remove(<ironchest:wood_iron_chest_upgrade>);
recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
recipes.remove(<ironchest:silver_gold_chest_upgrade>);
recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.remove(<ironchest:iron_gold_chest_upgrade>);


recipes.addShaped(<ironchest:vanilla_copper_shulker_upgrade>, [[<gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>],[<gregtech:meta_item_1:12018>, <minecraft:shulker_shell>, <gregtech:meta_item_1:12018>], [<gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>]]);
recipes.addShaped(<ironchest:vanilla_iron_shulker_upgrade>, [[<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>],[<gregtech:meta_item_1:12033>, <minecraft:shulker_shell>, <gregtech:meta_item_1:12033>], [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<ironchest:copper_iron_shulker_upgrade>, [[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],[<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12033>], [<gregtech:meta_item_1:12033>, <ore:blockGlass>, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<ironchest:iron_gold_shulker_upgrade>, [[<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12026>],[<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>], [<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>]]);
recipes.addShaped(<ironchest:gold_diamond_shulker_upgrade>, [[<ore:blockGlass>, <gregtech:meta_item_1:12111>, <ore:blockGlass>],[<ore:blockGlass>, <gregtech:meta_item_1:12026>, <ore:blockGlass>], [<ore:blockGlass>, <gregtech:meta_item_1:12111>, <ore:blockGlass>]]);
recipes.addShaped(<ironchest:copper_silver_shulker_upgrade>, [[<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>],[<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12062>], [<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>]]);
recipes.addShaped(<ironchest:silver_gold_shulker_upgrade>, [[<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12026>],[<ore:blockGlass>, <ore:blockGlass> , <ore:blockGlass>], [<gregtech:meta_item_1:12026>, <ore:blockGlass>, <gregtech:meta_item_1:12026>]]);
recipes.addShaped(<ironchest:copper_silver_chest_upgrade>, [[<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12062>],[<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>], [<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>]]);
recipes.addShaped(<ironchest:wood_copper_chest_upgrade>, [[<gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>],[<gregtech:meta_item_1:12018>, <minecraft:planks>, <gregtech:meta_item_1:12018>], [<gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>]]);
recipes.addShaped(<ironchest:wood_iron_chest_upgrade>, [[<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>],[<gregtech:meta_item_1:12033>, <minecraft:planks>, <gregtech:meta_item_1:12033>], [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],[<gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12111>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
recipes.addShaped(<ironchest:silver_gold_chest_upgrade>, [[<gregtech:meta_item_1:12026>, <ore:blockGlass>, <gregtech:meta_item_1:12026>],[<ore:blockGlass>, <gregtech:meta_item_1:12062>, <ore:blockGlass>], [<gregtech:meta_item_1:12026>, <ore:blockGlass>, <gregtech:meta_item_1:12026>]]);
recipes.addShaped(<ironchest:copper_iron_chest_upgrade>, [[<gregtech:meta_item_1:12033>, <ore:blockGlass>, <gregtech:meta_item_1:12033>],[<ore:blockGlass>, <gregtech:meta_item_1:12018>, <ore:blockGlass>], [<gregtech:meta_item_1:12033>, <ore:blockGlass>, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<ironchest:iron_gold_chest_upgrade>, [[<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>],[<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12026>], [<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>]]);


recipes.remove(<ironchest:iron_chest:2>);
recipes.remove(<ironchest:iron_chest:1>);
recipes.remove(<ironchest:iron_chest:4>);
recipes.remove(<ironchest:iron_chest:0>);
recipes.remove(<ironchest:iron_chest:3>);

recipes.addShaped(<ironchest:iron_chest:2>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],[<gregtech:meta_item_1:12111>, <ironchest:iron_chest:1>, <gregtech:meta_item_1:12111>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
recipes.addShaped(<ironchest:iron_chest:2>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],[<ore:blockGlass>, <ironchest:iron_chest:4>, <ore:blockGlass>], [<gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12111>]]);
recipes.addShaped(<ironchest:iron_chest:1>, [[<gregtech:meta_item_1:12026>, <ore:blockGlass>, <gregtech:meta_item_1:12026>],[<ore:blockGlass>, <ironchest:iron_chest:4>, <ore:blockGlass>], [<gregtech:meta_item_1:12026>, <ore:blockGlass>, <gregtech:meta_item_1:12026>]]);
recipes.addShaped(<ironchest:iron_chest:1>, [[<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>],[<gregtech:meta_item_1:12026>, <ironchest:iron_chest>, <gregtech:meta_item_1:12026>], [<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12026>]]);
recipes.addShaped(<ironchest:iron_chest:4>, [[<gregtech:meta_item_1:12062>, <ore:blockGlass>, <gregtech:meta_item_1:12062>],[<ore:blockGlass>, <ironchest:iron_chest>, <ore:blockGlass>], [<gregtech:meta_item_1:12062>, <ore:blockGlass>, <gregtech:meta_item_1:12062>]]);
recipes.addShaped(<ironchest:iron_chest:4>, [[<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>],[<gregtech:meta_item_1:12062>, <ironchest:iron_chest:3>, <gregtech:meta_item_1:12062>], [<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>]]);
recipes.addShaped(<ironchest:iron_chest>, [[<gregtech:meta_item_1:12033>, <ore:blockGlass>, <gregtech:meta_item_1:12033>],[<ore:blockGlass>, <ironchest:iron_chest:3>, <ore:blockGlass>], [<gregtech:meta_item_1:12033>, <ore:blockGlass>, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<ironchest:iron_chest>, [[<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>],[<gregtech:meta_item_1:12033>, <minecraft:chest>, <gregtech:meta_item_1:12033>], [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<ironchest:iron_chest:3>, [[<gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>],[<gregtech:meta_item_1:12018>, <minecraft:chest>, <gregtech:meta_item_1:12018>], [<gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>, <gregtech:meta_item_1:12018>]]);

