
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.VanillaFactory;
var bucket_latex = <forge:bucketfilled>.withTag({FluidName: "fluid_latex", Amount: 1000});

var stick = <minecraft:stick>;
var flint = <minecraft:flint:0>;



var nuggetWroughtIron = <gregtech:meta_item_1:9197>;
furnace.addRecipe(nuggetWroughtIron, <ore:nuggetIron>);

// VANILLA TNT
recipes.remove(<minecraft:tnt> * 1);

// VANILLA STICKS
recipes.remove(stick * 4);
recipes.addShapedMirrored(<minecraft:stick> * 2, [[<ore:plankWood>, null], [<ore:plankWood>, null ]]);

// VANILLA PLANK
recipes.remove(<minecraft:planks:0> * 4);
recipes.remove(<minecraft:planks:1> * 4);
recipes.remove(<minecraft:planks:2> * 4);
recipes.remove(<minecraft:planks:3> * 4);
recipes.remove(<minecraft:planks:4> * 4);
recipes.remove(<minecraft:planks:5> * 4);


// Chopping Block: Forestry Woods
recipes.remove(<forestry:planks.0:0> * 4);
recipes.remove(<forestry:planks.0:1> * 4);
recipes.remove(<forestry:planks.0:2> * 4);
recipes.remove(<forestry:planks.0:3> * 4);
recipes.remove(<forestry:planks.0:4> * 4);
recipes.remove(<forestry:planks.0:5> * 4);
recipes.remove(<forestry:planks.0:6> * 4);
recipes.remove(<forestry:planks.0:7> * 4);
recipes.remove(<forestry:planks.0:8> * 4);
recipes.remove(<forestry:planks.0:9> * 4);
recipes.remove(<forestry:planks.0:10> * 4);
recipes.remove(<forestry:planks.0:11> * 4);
recipes.remove(<forestry:planks.0:12> * 4);
recipes.remove(<forestry:planks.0:13> * 4);
recipes.remove(<forestry:planks.0:14> * 4);
recipes.remove(<forestry:planks.0:15> * 4);
recipes.remove(<forestry:planks.1:0> * 4);
recipes.remove(<forestry:planks.1:1> * 4);
recipes.remove(<forestry:planks.1:2> * 4);
recipes.remove(<forestry:planks.1:3> * 4);
recipes.remove(<forestry:planks.1:4> * 4);
recipes.remove(<forestry:planks.1:5> * 4);
recipes.remove(<forestry:planks.1:6> * 4);
recipes.remove(<forestry:planks.1:7> * 4);
recipes.remove(<forestry:planks.1:8> * 4);
recipes.remove(<forestry:planks.1:9> * 4);
recipes.remove(<forestry:planks.1:10> * 4);
recipes.remove(<forestry:planks.1:11> * 4);
recipes.remove(<forestry:planks.1:12> * 4);

recipes.addShapeless(<minecraft:planks:0> * 2, [<minecraft:log:0>]);
recipes.addShapeless(<minecraft:planks:1> * 2, [<minecraft:log:1>]);
recipes.addShapeless(<minecraft:planks:2> * 2, [<minecraft:log:2>]);
recipes.addShapeless(<minecraft:planks:3> * 2, [<minecraft:log:3>]);
recipes.addShapeless(<minecraft:planks:4> * 2, [<minecraft:log2:0>]);
recipes.addShapeless(<minecraft:planks:5> * 2, [<minecraft:log2:1>]);


// Vanilla Log -> Plank
recipes.addShapeless(<forestry:planks.0:0>*2, [<forestry:logs.0:0>]);
recipes.addShapeless(<forestry:planks.0:1>*2, [<forestry:logs.0:1>]);
recipes.addShapeless(<forestry:planks.0:2>*2, [<forestry:logs.0:2>]);
recipes.addShapeless(<forestry:planks.0:3>*2, [<forestry:logs.0:3>]);
recipes.addShapeless(<forestry:planks.0:4>*2, [<forestry:logs.1:0>]);
recipes.addShapeless(<forestry:planks.0:5>*2, [<forestry:logs.1:1>]);
recipes.addShapeless(<forestry:planks.0:6>*2, [<forestry:logs.1:2>]);
recipes.addShapeless(<forestry:planks.0:7>*2, [<forestry:logs.1:3>]);
recipes.addShapeless(<forestry:planks.0:8>*2, [<forestry:logs.2:0>]);
recipes.addShapeless(<forestry:planks.0:9>*2, [<forestry:logs.2:1>]);
recipes.addShapeless(<forestry:planks.0:10>*2, [<forestry:logs.2:2>]);
recipes.addShapeless(<forestry:planks.0:11>*2, [<forestry:logs.2:3>]);
recipes.addShapeless(<forestry:planks.0:12>*2, [<forestry:logs.3:0>]);
recipes.addShapeless(<forestry:planks.0:13>*2, [<forestry:logs.3:1>]);
recipes.addShapeless(<forestry:planks.0:14>*2, [<forestry:logs.3:2>]);
recipes.addShapeless(<forestry:planks.0:15>*2, [<forestry:logs.3:3>]);
recipes.addShapeless(<forestry:planks.1:0>*2, [<forestry:logs.4:0>]);
recipes.addShapeless(<forestry:planks.1:1>*2, [<forestry:logs.4:1>]);
recipes.addShapeless(<forestry:planks.1:2>*2, [<forestry:logs.4:2>]);
recipes.addShapeless(<forestry:planks.1:3>*2, [<forestry:logs.4:3>]);
recipes.addShapeless(<forestry:planks.1:4>*2, [<forestry:logs.5:0>]);
recipes.addShapeless(<forestry:planks.1:5>*2, [<forestry:logs.5:1>]);
recipes.addShapeless(<forestry:planks.1:6>*2, [<forestry:logs.5:2>]);
recipes.addShapeless(<forestry:planks.1:7>*2, [<forestry:logs.5:3>]);
recipes.addShapeless(<forestry:planks.1:8>*2, [<forestry:logs.6:0>]);
recipes.addShapeless(<forestry:planks.1:9>*2, [<forestry:logs.6:1>]);
recipes.addShapeless(<forestry:planks.1:10>*2, [<forestry:logs.6:2>]);
recipes.addShapeless(<forestry:planks.1:12>*2, [<forestry:logs.7:0>]);

// OREDICT




var oreFlint = <ore:ingotFlint>;  // name is a bit silly but makes it simpler to add dynamic recipes
oreFlint.add(<minecraft:flint>);

var oreSaw = <ore:craftingToolSaw>;

// SAW + FORESTRY-LOG = PLANKS x4 (Forestry, Vanilla)
recipes.addShapedMirrored(<forestry:planks.0:0>*4, [[oreSaw], [<forestry:logs.0:0>]]);
recipes.addShapedMirrored(<forestry:planks.0:1>*4, [[oreSaw], [<forestry:logs.0:1>]]);
recipes.addShapedMirrored(<forestry:planks.0:2>*4, [[oreSaw], [<forestry:logs.0:2>]]);
recipes.addShapedMirrored(<forestry:planks.0:3>*4, [[oreSaw], [<forestry:logs.0:3>]]);
recipes.addShapedMirrored(<forestry:planks.0:4>*4, [[oreSaw], [<forestry:logs.1:0>]]);
recipes.addShapedMirrored(<forestry:planks.0:5>*4, [[oreSaw], [<forestry:logs.1:1>]]);
recipes.addShapedMirrored(<forestry:planks.0:6>*4, [[oreSaw], [<forestry:logs.1:2>]]);
recipes.addShapedMirrored(<forestry:planks.0:7>*4, [[oreSaw], [<forestry:logs.1:3>]]);
recipes.addShapedMirrored(<forestry:planks.0:8>*4, [[oreSaw], [<forestry:logs.2:0>]]);
recipes.addShapedMirrored(<forestry:planks.0:9>*4, [[oreSaw], [<forestry:logs.2:1>]]);
recipes.addShapedMirrored(<forestry:planks.0:10>*4, [[oreSaw], [<forestry:logs.2:2>]]);
recipes.addShapedMirrored(<forestry:planks.0:11>*4, [[oreSaw], [<forestry:logs.2:3>]]);
recipes.addShapedMirrored(<forestry:planks.0:12>*4, [[oreSaw], [<forestry:logs.3:0>]]);
recipes.addShapedMirrored(<forestry:planks.0:13>*4, [[oreSaw], [<forestry:logs.3:1>]]);
recipes.addShapedMirrored(<forestry:planks.0:14>*4, [[oreSaw], [<forestry:logs.3:2>]]);
recipes.addShapedMirrored(<forestry:planks.0:15>*4, [[oreSaw], [<forestry:logs.3:3>]]);
recipes.addShapedMirrored(<forestry:planks.1:0>*4, [[oreSaw], [<forestry:logs.4:0>]]);
recipes.addShapedMirrored(<forestry:planks.1:1>*4, [[oreSaw], [<forestry:logs.4:1>]]);
recipes.addShapedMirrored(<forestry:planks.1:2>*4, [[oreSaw], [<forestry:logs.4:2>]]);
recipes.addShapedMirrored(<forestry:planks.1:3>*4, [[oreSaw], [<forestry:logs.4:3>]]);
recipes.addShapedMirrored(<forestry:planks.1:4>*4, [[oreSaw], [<forestry:logs.5:0>]]);
recipes.addShapedMirrored(<forestry:planks.1:5>*4, [[oreSaw], [<forestry:logs.5:1>]]);
recipes.addShapedMirrored(<forestry:planks.1:6>*4, [[oreSaw], [<forestry:logs.5:2>]]);
recipes.addShapedMirrored(<forestry:planks.1:7>*4, [[oreSaw], [<forestry:logs.5:3>]]);
recipes.addShapedMirrored(<forestry:planks.1:8>*4, [[oreSaw], [<forestry:logs.6:0>]]);
recipes.addShapedMirrored(<forestry:planks.1:9>*4, [[oreSaw], [<forestry:logs.6:1>]]);
recipes.addShapedMirrored(<forestry:planks.1:10>*4, [[oreSaw], [<forestry:logs.6:2>]]);
recipes.addShapedMirrored(<forestry:planks.1:12>*4, [[oreSaw], [<forestry:logs.7:0>]]);
recipes.addShapedMirrored(<minecraft:planks:0>*4, [[oreSaw], [<minecraft:log:0>]]);
recipes.addShapedMirrored(<minecraft:planks:1>*4, [[oreSaw], [<minecraft:log:1>]]);
recipes.addShapedMirrored(<minecraft:planks:2>*4, [[oreSaw], [<minecraft:log:2>]]);
recipes.addShapedMirrored(<minecraft:planks:3>*4, [[oreSaw], [<minecraft:log:3>]]);
recipes.addShapedMirrored(<minecraft:planks:4>*4, [[oreSaw], [<minecraft:log2:0>]]);
recipes.addShapedMirrored(<minecraft:planks:5>*4, [[oreSaw], [<minecraft:log2:1>]]);

// SAW + PLANK = STICK
recipes.addShapedMirrored(<minecraft:stick>*4, [[oreSaw], [<ore:plankWood>]]);


