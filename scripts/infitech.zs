import mods.factorytech.ChopSaw;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.VanillaFactory;
var bucket_latex = <forge:bucketfilled>.withTag({FluidName: "fluid_latex", Amount: 1000});
var rubber = <contenttweaker:rubber>;
var raw_rubber = <contenttweaker:raw_rubber>;
var stick = <minecraft:stick>;
var flint = <minecraft:flint:0>;

recipes.addShapeless(raw_rubber * 1, [bucket_latex]);

furnace.addRecipe(rubber, raw_rubber);

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

recipes.addShapeless(<minecraft:planks:0> * 2, [<minecraft:log:0>]);
recipes.addShapeless(<minecraft:planks:1> * 2, [<minecraft:log:1>]);
recipes.addShapeless(<minecraft:planks:1> * 2, [<contenttweaker:dried_spruce_log>]);
recipes.addShapeless(<minecraft:planks:2> * 2, [<minecraft:log:2>]);
recipes.addShapeless(<minecraft:planks:3> * 2, [<minecraft:log:3>]);
recipes.addShapeless(<minecraft:planks:4> * 2, [<minecraft:log2:0>]);
recipes.addShapeless(<minecraft:planks:5> * 2, [<minecraft:log2:1>]);

ChopSaw.removeRecipe(<minecraft:log:0> * 6);
ChopSaw.removeRecipe(<minecraft:log:1> * 6);
ChopSaw.removeRecipe(<minecraft:log:2> * 6);
ChopSaw.removeRecipe(<minecraft:log:3> * 6);
ChopSaw.removeRecipe(<minecraft:log2:0> * 6);
ChopSaw.removeRecipe(<minecraft:log2:1> * 6);


// Chopping Block: Vanilla Woods
mods.factorytech.ChopSaw.addRecipe(<minecraft:planks:0> * 3, <minecraft:log:0>);
mods.factorytech.ChopSaw.addRecipe(<minecraft:planks:1> * 3, <minecraft:log:1>);
mods.factorytech.ChopSaw.addRecipe(<minecraft:planks:2> * 3, <minecraft:log:2>);
mods.factorytech.ChopSaw.addRecipe(<minecraft:planks:3> * 3, <minecraft:log:3>);
mods.factorytech.ChopSaw.addRecipe(<minecraft:planks:4> * 3, <minecraft:log2:0>);
mods.factorytech.ChopSaw.addRecipe(<minecraft:planks:5> * 3, <minecraft:log2:1>);

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

mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:0>* 3, <forestry:logs.0:0>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:1>* 3, <forestry:logs.0:1>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:2>* 3, <forestry:logs.0:2>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:3>* 3, <forestry:logs.0:3>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:4>* 3, <forestry:logs.1:0>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:5>* 3, <forestry:logs.1:1>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:6>* 3, <forestry:logs.1:2>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:7>* 3, <forestry:logs.1:3>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:8>* 3, <forestry:logs.2:0>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:9>* 3, <forestry:logs.2:1>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:10>* 3, <forestry:logs.2:2>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:11>* 3, <forestry:logs.2:3>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:12>* 3, <forestry:logs.3:0>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:13>* 3, <forestry:logs.3:1>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:14>* 3, <forestry:logs.3:2>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.0:15>* 3, <forestry:logs.3:3>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:0>* 3, <forestry:logs.4:0>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:1>* 3, <forestry:logs.4:1>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:2>* 3, <forestry:logs.4:2>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:3>* 3, <forestry:logs.4:3>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:4>* 3, <forestry:logs.5:0>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:5>* 3, <forestry:logs.5:1>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:6>* 3, <forestry:logs.5:2>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:7>* 3, <forestry:logs.5:3>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:8>* 3, <forestry:logs.6:0>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:9>* 3, <forestry:logs.6:1>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:10>* 3, <forestry:logs.6:2>);
mods.factorytech.ChopSaw.addRecipe(<forestry:planks.1:12>* 3, <forestry:logs.7:0>);

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
var logWood = <ore:logWood>;
logWood.add(<contenttweaker:dried_spruce_log>); // Add our dried spruce log to logs



/* Create oredictionaries for the GT-like tools.  Use meta 32767 to cover all "materials" for that tool */
/* 32767 will register all meta of that item under that oredict (thanks Lord Plant/Shadows at discord: PackDev), alternative to anyDamage() that works with oredict */
var mortar_flint = <contenttweaker:flint_mortar:32767>;  
var mortar_bronze = <contenttweaker:bronze_mortar:32767>;
var mortar_iron = <contenttweaker:iron_mortar:32767>;
var mortar_steel = <contenttweaker:steel_mortar:32767>;

var oreFlint = <ore:ingotFlint>;  // name is a bit silly but makes it simpler to add dynamic recipes
oreFlint.add(<minecraft:flint>);

global tool_metals as string[] = [
    "Flint",
    "Bronze",
    "Iron",
    "Steel"
];

val mortar_metal_items = {
    "Flint" : <contenttweaker:flint_mortar>,
    "Bronze" : <contenttweaker:bronze_mortar>,
    "Iron" : <contenttweaker:iron_mortar>,
    "Steel" : <contenttweaker:steel_mortar>
}  as IItemStack[string];


for metal_name in tool_metals {
  var oreDictName = "ingot" + metal_name;
  var outputItem = mortar_metal_items[metal_name] as crafttweaker.item.IItemStack;
  recipes.remove(outputItem);
  recipes.addShaped(outputItem * 1, [[null, oreDict[oreDictName], null], 
    [<ore:stone>, oreDict[oreDictName], <ore:stone>], 
    [<ore:stone>,<ore:stone>,<ore:stone>]]);
}


    
    
var oreMortars = <ore:mortars>;
oreMortars.add(mortar_flint);
oreMortars.add(mortar_bronze);
oreMortars.add(mortar_iron);
oreMortars.add(mortar_steel);

var saw_flint = <contenttweaker:flint_saw:32767>;  
var saw_bronze = <contenttweaker:bronze_saw:32767>;
var saw_iron = <contenttweaker:iron_saw:32767>;
var saw_steel = <contenttweaker:steel_saw:32767>;
var oreSaws = <ore:saws>;
oreSaws.add(saw_flint);
oreSaws.add(saw_bronze);
oreSaws.add(saw_iron);
oreSaws.add(saw_steel);

var hammer_flint = <contenttweaker:flint_hammer:32767>;  
var hammer_bronze = <contenttweaker:bronze_hammer:32767>;
var hammer_iron = <contenttweaker:iron_hammer:32767>;
var hammer_steel = <contenttweaker:steel_hammer:32767>;
var oreHammers = <ore:hammers>;
oreHammers.add(hammer_flint);
oreHammers.add(hammer_bronze);
oreHammers.add(hammer_iron);
oreHammers.add(hammer_steel);

var wrench_flint = <contenttweaker:flint_wrench:32767>;  
var wrench_bronze = <contenttweaker:bronze_wrench:32767>;
var wrench_iron = <contenttweaker:iron_wrench:32767>;
var wrench_steel = <contenttweaker:steel_wrench:32767>;
var oreWrenches = <ore:wrenchs>;
oreWrenches.add(wrench_flint);
oreWrenches.add(wrench_bronze);
oreWrenches.add(wrench_iron);
oreWrenches.add(wrench_steel);


var dustIron = <thermalfoundation:material:0>;
var dustGold = <thermalfoundation:material:1>;
var dustCopper = <thermalfoundation:material:64>;
var dustTin = <thermalfoundation:material:65>;
var dustSilver = <thermalfoundation:material:66>;
var dustLead = <thermalfoundation:material:67>;
var dustAluminum = <thermalfoundation:material:68>;
var dustNickel = <thermalfoundation:material:69>;
var dustPlatinum = <thermalfoundation:material:70>;
var dustIridium = <thermalfoundation:material:71>;
var dustCoal = <thermalfoundation:material:768>;
var dustCharCoal = <thermalfoundation:material:769>;
var dustObsidian = <thermalfoundation:material:770>;



// MORTAR + INGOT = DUST
recipes.addShapeless(dustIron , [oreMortars, <ore:ingotIron >]);
recipes.addShapeless(dustGold , [oreMortars, <ore:ingotGold >]);
recipes.addShapeless(dustCopper , [oreMortars, <ore:ingotCopper >]);
recipes.addShapeless(dustTin , [oreMortars, <ore:ingotTin >]);
recipes.addShapeless(dustSilver , [oreMortars, <ore:ingotSilver >]);
recipes.addShapeless(dustLead , [oreMortars, <ore:ingotLead >]);
recipes.addShapeless(dustAluminum , [oreMortars, <ore:ingotAluminum >]);
recipes.addShapeless(dustNickel , [oreMortars, <ore:ingotNickel >]);
recipes.addShapeless(dustPlatinum , [oreMortars, <ore:ingotPlatinum >]);
recipes.addShapeless(dustIridium , [oreMortars, <ore:ingotIridium >]);
recipes.addShapeless(dustCoal , [oreMortars, <ore:coal>]);
recipes.addShapeless(dustCharCoal , [oreMortars, <ore:charcoal >]);
recipes.addShapeless(dustObsidian , [oreMortars, <ore:obsidian>]);

// MORTAR + CRUSHED_ORE = DUST
recipes.addShapeless(dustIron , [oreMortars, <ore:crushedOreIron>]);
recipes.addShapeless(dustGold , [oreMortars, <ore:crushedOreGold>]);
recipes.addShapeless(dustCopper , [oreMortars, <ore:crushedOreCopper>]);
recipes.addShapeless(dustTin , [oreMortars, <ore:crushedOreTin>]);
recipes.addShapeless(dustSilver , [oreMortars, <ore:crushedOreSilver>]);
recipes.addShapeless(dustLead , [oreMortars, <ore:crushedOreLead>]);
recipes.addShapeless(dustAluminum , [oreMortars, <ore:crushedOreAluminum>]);
recipes.addShapeless(dustNickel , [oreMortars, <ore:crushedOreNickel>]);
recipes.addShapeless(dustPlatinum , [oreMortars, <ore:crushedOrePlatinum>]);
recipes.addShapeless(dustIridium , [oreMortars, <ore:crushedOreIridium>]);
recipes.addShapeless(dustCoal , [oreMortars, <ore:crushedOreCoal>]);
recipes.addShapeless(dustCharCoal , [oreMortars, <ore:crushedOreCharCoal>]);
recipes.addShapeless(dustObsidian , [oreMortars, <ore:crushedOreObsidian>]);



// HAMMER + INGOTS = PLATE
recipes.addShapedMirrored(<ore:plateIron>.items[0], [[oreHammers], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShapedMirrored(<ore:plateGold>.items[0], [[oreHammers], [<ore:ingotGold>], [<ore:ingotGold>]]);
recipes.addShapedMirrored(<ore:plateCopper>.items[0], [[oreHammers], [<ore:ingotCopper>], [<ore:ingotCopper>]]);
recipes.addShapedMirrored(<ore:plateTin>.items[0], [[oreHammers], [<ore:ingotTin>], [<ore:ingotTin>]]);
recipes.addShapedMirrored(<ore:plateSilver>.items[0], [[oreHammers], [<ore:ingotSilver>], [<ore:ingotSilver>]]);
recipes.addShapedMirrored(<ore:plateLead>.items[0], [[oreHammers], [<ore:ingotLead>], [<ore:ingotLead>]]);
recipes.addShapedMirrored(<ore:plateAluminum>.items[0], [[oreHammers], [<ore:ingotAluminum>], [<ore:ingotAluminum>]]);
recipes.addShapedMirrored(<ore:plateNickel>.items[0], [[oreHammers], [<ore:ingotNickel>], [<ore:ingotNickel>]]);
recipes.addShapedMirrored(<ore:platePlatinum>.items[0], [[oreHammers], [<ore:ingotPlatinum>], [<ore:ingotPlatinum>]]);
recipes.addShapedMirrored(<ore:plateIridium>.items[0], [[oreHammers], [<ore:ingotIridium>], [<ore:ingotIridium>]]);

// SAW + FORESTRY-LOG = PLANKS x4 (Forestry, Vanilla)
recipes.addShapedMirrored(<forestry:planks.0:0>*4, [[oreSaws], [<forestry:logs.0:0>]]);
recipes.addShapedMirrored(<forestry:planks.0:1>*4, [[oreSaws], [<forestry:logs.0:1>]]);
recipes.addShapedMirrored(<forestry:planks.0:2>*4, [[oreSaws], [<forestry:logs.0:2>]]);
recipes.addShapedMirrored(<forestry:planks.0:3>*4, [[oreSaws], [<forestry:logs.0:3>]]);
recipes.addShapedMirrored(<forestry:planks.0:4>*4, [[oreSaws], [<forestry:logs.1:0>]]);
recipes.addShapedMirrored(<forestry:planks.0:5>*4, [[oreSaws], [<forestry:logs.1:1>]]);
recipes.addShapedMirrored(<forestry:planks.0:6>*4, [[oreSaws], [<forestry:logs.1:2>]]);
recipes.addShapedMirrored(<forestry:planks.0:7>*4, [[oreSaws], [<forestry:logs.1:3>]]);
recipes.addShapedMirrored(<forestry:planks.0:8>*4, [[oreSaws], [<forestry:logs.2:0>]]);
recipes.addShapedMirrored(<forestry:planks.0:9>*4, [[oreSaws], [<forestry:logs.2:1>]]);
recipes.addShapedMirrored(<forestry:planks.0:10>*4, [[oreSaws], [<forestry:logs.2:2>]]);
recipes.addShapedMirrored(<forestry:planks.0:11>*4, [[oreSaws], [<forestry:logs.2:3>]]);
recipes.addShapedMirrored(<forestry:planks.0:12>*4, [[oreSaws], [<forestry:logs.3:0>]]);
recipes.addShapedMirrored(<forestry:planks.0:13>*4, [[oreSaws], [<forestry:logs.3:1>]]);
recipes.addShapedMirrored(<forestry:planks.0:14>*4, [[oreSaws], [<forestry:logs.3:2>]]);
recipes.addShapedMirrored(<forestry:planks.0:15>*4, [[oreSaws], [<forestry:logs.3:3>]]);
recipes.addShapedMirrored(<forestry:planks.1:0>*4, [[oreSaws], [<forestry:logs.4:0>]]);
recipes.addShapedMirrored(<forestry:planks.1:1>*4, [[oreSaws], [<forestry:logs.4:1>]]);
recipes.addShapedMirrored(<forestry:planks.1:2>*4, [[oreSaws], [<forestry:logs.4:2>]]);
recipes.addShapedMirrored(<forestry:planks.1:3>*4, [[oreSaws], [<forestry:logs.4:3>]]);
recipes.addShapedMirrored(<forestry:planks.1:4>*4, [[oreSaws], [<forestry:logs.5:0>]]);
recipes.addShapedMirrored(<forestry:planks.1:5>*4, [[oreSaws], [<forestry:logs.5:1>]]);
recipes.addShapedMirrored(<forestry:planks.1:6>*4, [[oreSaws], [<forestry:logs.5:2>]]);
recipes.addShapedMirrored(<forestry:planks.1:7>*4, [[oreSaws], [<forestry:logs.5:3>]]);
recipes.addShapedMirrored(<forestry:planks.1:8>*4, [[oreSaws], [<forestry:logs.6:0>]]);
recipes.addShapedMirrored(<forestry:planks.1:9>*4, [[oreSaws], [<forestry:logs.6:1>]]);
recipes.addShapedMirrored(<forestry:planks.1:10>*4, [[oreSaws], [<forestry:logs.6:2>]]);
recipes.addShapedMirrored(<forestry:planks.1:12>*4, [[oreSaws], [<forestry:logs.7:0>]]);
recipes.addShapedMirrored(<minecraft:planks:0>*4, [[oreSaws], [<minecraft:log:0>]]);
recipes.addShapedMirrored(<minecraft:planks:1>*4, [[oreSaws], [<minecraft:log:1>]]);
recipes.addShapedMirrored(<minecraft:planks:1>*4, [[oreSaws], [<contenttweaker:dried_spruce_log>]]);
recipes.addShapedMirrored(<minecraft:planks:2>*4, [[oreSaws], [<minecraft:log:2>]]);
recipes.addShapedMirrored(<minecraft:planks:3>*4, [[oreSaws], [<minecraft:log:3>]]);
recipes.addShapedMirrored(<minecraft:planks:4>*4, [[oreSaws], [<minecraft:log2:0>]]);
recipes.addShapedMirrored(<minecraft:planks:5>*4, [[oreSaws], [<minecraft:log2:1>]]);

// SAW + PLANK = STICK
recipes.addShapedMirrored(<minecraft:stick>*4, [[oreSaws], [<ore:plankWood>]]);

// BRONZE DUST
var dustBronze = <thermalfoundation:material:99>;
var blockBrick = <minecraft:brick_block>;

recipes.remove(dustBronze * 4);
recipes.addShapeless(dustBronze * 3, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

recipes.remove(<forestry:ingot_bronze> * 4);


// GREGGY WIDGETS
var bronzePlatedBrick = <contenttweaker:bronze_plated_brick>;

recipes.addShaped(bronzePlatedBrick, [[<ore:plateBronze>, oreHammers, <ore:plateBronze>], 
  [<ore:plateBronze>, blockBrick, <ore:plateBronze>], 
  [<ore:plateBronze>, oreWrenches, <ore:plateBronze>]]);

val machine_metals = [
    "Bronze",
    "Steel",
    "Titanium",
    "Tungstensteel",
    "Aluminium"
] as string[];


  
for metal in machine_metals {
  var new_machine_name = "machine_frame" ~ metal;
  var machine_frame = oreDict[new_machine_name].firstItem;
  
  var rod_name = "rod" ~ metal;
  var rod = oreDict[rod_name];
  
  var screw_name = "screw" ~ metal;
  var screw = oreDict[screw_name];
  
  var plate_name = "plate" ~ metal;
  var plate = oreDict[plate_name];
  
  recipes.addShaped(machine_frame, [[rod, screw, rod], 
                          [plate, oreWrenches, plate], 
                          [rod, screw, rod]]);
  
}
  
  
  


/*
events.onPlayerLoggedIn( function (event as crafttweaker.event.PlayerLoggedInEvent) {
  print ("Greetings and salutations, " ~ event.player.name);
});

events.onPlayerCrafted (function (event as crafttweaker.event.PlayerCraftedEvent) {
  print ("event".length);
  print (event.player.name);
  event.player.xp += 10;
});

events.onPlayerSmelted (function (event as crafttweaker.event.PlayerSmeltedEvent) {
  print ("event".length);
  print (event.player.name);
  event.player.xp += 10;
});

*/  