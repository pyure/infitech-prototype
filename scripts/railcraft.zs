// --- Created by Jason McRay --- 
import mods.gregtech.recipe.RecipeMap;
import mods.pneumaticcraft.pressurechamber;

val mixer as RecipeMap = RecipeMap.getByName("mixer");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");

# Disable the metal rolling machines
# Reminder: May need to disable one of the RC villagers in config if they end up spawning rolling machines (cuz I bet they do)
var metal_roller = <railcraft:equipment>;
var powered_metal_roller = <railcraft:equipment:1>;
scripts.functions.disableItem(metal_roller);
scripts.functions.disableItem(powered_metal_roller);

# Aliases
var advItemLoader = <railcraft:manipulator:2>;
var advItemUnloader = <railcraft:manipulator:3>;

var craftingToolWrenchEmptyTag = <ore:craftingToolWrenchEmptyTag>;
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;

var backpackApothecary = <railcraft:backpack_apothecary_t1>;
var backpackApothecaryT2 = <railcraft:backpack_apothecary_t1>;
var backpackIceman = <railcraft:backpack_iceman_t1>;
var backpackIcemanT2 = <railcraft:backpack_iceman_t2>;
var backpackTrack = <railcraft:backpack_trackman_t1>;
var backpackTrackT2 = <railcraft:backpack_trackman_t2>;
var backpackSignalMan = <railcraft:backpack_signalman_t1>;
var backpackSignalManT2 = <railcraft:backpack_signalman_t2>;
var blockDiamond = <ore:blockDiamond>;
var blockRedstone = <ore:blockRedstone>;
var blockSteel = <ore:blockSteel>;
var book = <ore:bookEmpty>;
var brickAbyssal = <railcraft:brick_abyssal>;
var bucket = <minecraft:bucket>;
var cablePlatinum = <ore:cableGtSinglePlatinum>;
var leadCable = <ore:cableGtSingleLead>;
var circuitAdvanced = <ore:circuitAdvanced>;
var craftingTable = <minecraft:crafting_table>;
var dustObsidian = <ore:dustObsidian>;
var dustRedstone = <ore:dustRedstone>;
var emitterLV = <gregtech:meta_item_1:32680>;
var fireCharge = <minecraft:fire_charge>;
var fireboxLiquid = <railcraft:boiler_firebox_fluid>;
var fireboxSolid = <railcraft:boiler_firebox_solid>;
var flintAndSteel = <minecraft:flint_and_steel>;
var fluxTransformer = <railcraft:flux_transformer>;
var forceTrackEmitter = <railcraft:force_track_emitter>;
var furnaceHighPressure = <gregtech:machine:16>;
var furnaceSteam = <gregtech:machine:15>;
var glass = <minecraft:glass>;
var ingotAluminium = <ore:ingotAluminium>;
var ingotBronze = <ore:ingotBronze>;
var ingotCopper = <ore:ingotCopper>;
var ingotGold = <ore:ingotGold>;
var ingotIron = <ore:ingotIron>;
var ingotSteel = <ore:ingotSteel>;
var ingotTitanium = <ore:ingotTitanium>;
var ingotTungsten = <ore:ingotTungsten>;
var ironBars = <minecraft:iron_bars>;
var itemLoader = <railcraft:manipulator>;
var itemUnloader = <railcraft:manipulator:1>;
var pickaxeDiamond = <minecraft:diamond_pickaxe>;
var piston = <minecraft:piston>;
var plankWood = <ore:plankWood>;
var plateCopper = <ore:plateCopper>;
var plateIron = <ore:plateIron>;
var plateSteel = <ore:plateSteel>;
var plateTinAlloy = <ore:plateTinAlloy>;
var pressurePlateStone = <minecraft:stone_pressure_plate>;
var railAdvanced = <railcraft:rail:1>;
var railElectric = <railcraft:rail:5>;
var railHS = <railcraft:rail:3>;
var railReinforced = <railcraft:rail:4>;
var railStandard = <railcraft:rail>;
var railWooden = <railcraft:rail:2>;
var rebar = <railcraft:rebar>;

var sand = <minecraft:sand>;
var shuntingWire = <railcraft:wire>;

var stickWood = <ore:stickWood>;


var water = <liquid:water>;
var wireSupportFrame = <railcraft:frame>;


var materialCloth = <ore:materialCloth>;
var hardenedLeather = <harvestcraft:hardenedleatheritem>;
var wovenSilk = <forestry:crafting_material:3>;

# Block/item Removal
scripts.functions.disableItem(<railcraft:rock_crusher>);
scripts.functions.disableItem(<railcraft:steam_oven>);
scripts.functions.disableItem(<railcraft:coke_oven>); 
scripts.functions.disableItem(<railcraft:blast_furnace>); 
scripts.functions.disableItem(<railcraft:coke_oven_red>);

# Recipe tweaks

// Advanced Item Loader
recipes.remove(advItemLoader);
recipes.addShaped("railcraft_manipulator_2", advItemLoader, 
[
[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], 
[<ore:dustRedstone>, itemLoader, <ore:dustRedstone>], 
[<ore:ingotSteel>, <minecraft:piston>, <ore:ingotSteel>]
]);

// Advanced Item Unloader
recipes.remove(advItemUnloader);
recipes.addShaped("railcraft_manipulator_3", advItemUnloader, 
[
[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], 
[<ore:dustRedstone>, itemUnloader, <ore:dustRedstone>], 
[<ore:ingotSteel>, <minecraft:piston>, <ore:ingotSteel>]
]);


recipes.addShapeless("it3_rc_wood_rail", railWooden * 3, [ingotIron, stickWood]);

recipes.remove(fireboxSolid);
recipes.addShaped("it3_rc_firebox", fireboxSolid, [
	[brickAbyssal, brickAbyssal, brickAbyssal],
	[brickAbyssal, fireCharge, brickAbyssal],
	[brickAbyssal, furnaceSteam, brickAbyssal]]);
recipes.remove(fireboxLiquid);
recipes.addShaped("it3_rc_firebox_liq", fireboxLiquid, [
	[plateSteel, bucket, plateSteel],
	[ironBars, fireCharge, ironBars],
	[plateSteel, furnaceHighPressure, plateSteel]]);

recipes.remove(forceTrackEmitter);
recipes.addShaped("it3_rc_force_track_emit", forceTrackEmitter, [
    [plateTinAlloy, ingotCopper, plateTinAlloy],
    [ingotCopper, emitterLV, ingotCopper],
    [plateTinAlloy, ingotCopper, plateTinAlloy]]);
recipes.remove(fluxTransformer);
recipes.addShaped("it3_rc_flux_trans", fluxTransformer * 2, [
    [plateCopper, ingotGold, plateCopper],
    [ingotGold, blockRedstone, ingotGold],
    [plateCopper, ingotGold, plateCopper]]);
recipes.addShaped("it3_rc_wire_supp_frame", wireSupportFrame * 6, [
	[plateIron, plateIron, plateIron],
	[rebar, null, rebar],
	[rebar, rebar, rebar]]);
  
// --- Backs ---
recipes.remove(backpackTrack);
recipes.addShapeless("it3_rc_backpack_track", backpackTrack, [backpackTrack]);
recipes.addShaped("it3_rc_backpacktrack2", backpackTrack, [
	[materialCloth, <minecraft:rail>, materialCloth],
	[hardenedLeather, <minecraft:rail>, hardenedLeather],
	[hardenedLeather, hardenedLeather, hardenedLeather]]);
mods.forestry.Carpenter.removeRecipe(backpackTrackT2);
mods.forestry.Carpenter.addRecipe(backpackTrackT2,         [[wovenSilk, wovenSilk, wovenSilk],[wovenSilk, wovenSilk, wovenSilk], [wovenSilk, wovenSilk, wovenSilk]], 600, <liquid:seed.oil> * 5000, backpackTrack);

//mods.forestry.Carpenter.addRecipe(thermionicFabricator, [[steelScrew, gtTank, steelScrew],[gaCoil, sturdyCasing, gaCoil],[steelScrew, electricMotorLV, steelScrew]], 300, moltenRedstone * 1008, worktable);

                                      
recipes.remove(backpackIceman);
recipes.addShapeless("it3_rc_backpack_iceman", backpackIceman, [backpackIceman]);
recipes.addShaped("it3_rc_backpack_iceman2", backpackIceman, [
	[materialCloth, <minecraft:snow>, materialCloth],
	[hardenedLeather, <minecraft:snow>, hardenedLeather],
	[hardenedLeather, hardenedLeather, hardenedLeather]]);
mods.forestry.Carpenter.removeRecipe(backpackIcemanT2);
mods.forestry.Carpenter.addRecipe(backpackIcemanT2, [[wovenSilk, wovenSilk, wovenSilk],
                                       [wovenSilk, wovenSilk, wovenSilk],
                                       [wovenSilk, wovenSilk, wovenSilk]], 600, <liquid:seed.oil> * 5000, backpackIceman);
recipes.remove(backpackApothecary);
recipes.addShapeless("it3_rc_backpack_apoth", backpackApothecary, [backpackApothecary]);
recipes.addShaped("it3_rc_backpack_apoth2", backpackApothecary, [
	[materialCloth, <ore:potionHealing>, materialCloth],
	[hardenedLeather, <ore:potionHealing>, hardenedLeather],
	[hardenedLeather, hardenedLeather, hardenedLeather]]);
mods.forestry.Carpenter.removeRecipe(backpackApothecaryT2);
mods.forestry.Carpenter.addRecipe(backpackApothecaryT2, [[wovenSilk, wovenSilk, wovenSilk],
                                           [wovenSilk, wovenSilk, wovenSilk],
                                           [wovenSilk, wovenSilk, wovenSilk]], 600, <liquid:seed.oil> * 5000, backpackApothecary);


/* NOTES FROM PORTING FROM 1.7.10/INFITECH 2
* Disabled RC Coke Oven since it has 98% overlap with the new GT implementation
* Removed custom recipes for tracks since I can't match between versions easily
* Removed all the metal-post recipes because I can't figure them out and nobody cares
* Allowed the redstone cart cuz I don't care
* Engraving Bench doesn't seem to be a thing anymore
*/

recipes.addShapeless("it3_rc_track_parts", <railcraft:track_parts> * 2, [<ore:boltIron>, <ore:screwIron>, <ore:stickIron>]);

// Raw firestone.  Need more recipes
mods.pneumaticcraft.pressurechamber.addRecipe([<railcraft:ore_magic> * 1], 4.5, [<railcraft:firestone_raw>]);

// Steam Locomotive
var locomotive = <railcraft:locomotive_steam_solid>.withTag({model: "railcraft:default"});
var steam_boiler = <gregtech:machine:2>;
var mvMotor = <metaitem:electric.motor.mv>;

recipes.removeByRecipeName("railcraft:locomotive_steam_solid#0$1");
recipes.addShaped("it3_rc_locomotive", locomotive, [
  [<ore:plateIron>, <ore:plateIron>, steam_boiler], 
  [<ore:plateIron>, <ore:plateIron>, steam_boiler], 
  [craftingToolWrenchEmptyTag, <minecraft:minecart:*>, <minecraft:minecart:*>]]);
  
recipes.removeByRecipeName("railcraft:locomotive_electric#0$1");  
recipes.addShaped("it3_rc_electric_loc", <railcraft:locomotive_electric>.withTag({primaryColor: "yellow", secondaryColor: "black"}), [
  [<minecraft:redstone_lamp:*>, <ore:plateSteel>, craftingToolWrenchEmptyTag], 
  [mvMotor, <ore:blockChargeBatteryRechargeable>, mvMotor], 
  [<ore:blockSteel>, <minecraft:minecart:*>, <ore:blockSteel>]]);
  
// Melting RC Iron Tank Components
furnace.addRecipe(<minecraft:iron_nugget> * 4, <railcraft:tank_iron_gauge:*>);
furnace.addRecipe(<minecraft:iron_nugget> * 4, <railcraft:tank_iron_valve:*>);
furnace.addRecipe(<minecraft:iron_nugget> * 4, <railcraft:tank_iron_wall:*>);

// Melting RC Steel Tank Components
blast_furnace.recipeBuilder().inputs(<railcraft:tank_steel_gauge:*> * 1).outputs(<ore:nuggetSteel>.firstItem * 4)
	.property("temperature", 1000).duration(120).EUt(120).buildAndRegister();
blast_furnace.recipeBuilder().inputs(<railcraft:tank_steel_valve:*> * 1).outputs(<ore:nuggetSteel>.firstItem * 4)
	.property("temperature", 1000).duration(120).EUt(120).buildAndRegister();
blast_furnace.recipeBuilder().inputs(<railcraft:tank_steel_wall:*> * 1).outputs(<ore:nuggetSteel>.firstItem * 4)
	.property("temperature", 1000).duration(120).EUt(120).buildAndRegister();

// Greg the Iron Tank recipes
recipes.removeByRecipeName("railcraft:tank_iron_wall#0$2");
recipes.addShaped("it3_rc_iron_tank_wall", <railcraft:tank_iron_wall> * 4, [
  [<ore:plateIron>, <ore:plateIron>, craftingToolWrenchEmptyTag], 
  [<ore:plateIron>, <ore:plateIron>, craftingToolHardHammerEmptyTag], 
  [null, null, null]]);

recipes.removeByRecipeName("railcraft:tank_steel_wall#0$2");
recipes.addShaped("it3_rc_steel_tank_wall", <railcraft:tank_steel_wall> * 4, [
  [<ore:plateSteel>, <ore:plateSteel>, craftingToolWrenchEmptyTag], 
  [<ore:plateSteel>, <ore:plateSteel>, craftingToolHardHammerEmptyTag], 
  [null, null, null]]);
  
recipes.removeByRecipeName("railcraft:tank_iron_valve#0$2");
recipes.addShapeless("it3_rc_iron_tank_valve", <railcraft:tank_iron_valve>, [<railcraft:tank_iron_wall>, <minecraft:lever>, <minecraft:iron_bars>]);

recipes.removeByRecipeName("railcraft:tank_steel_valve#0$2");
recipes.addShapeless("it3_rc_steel_tank_valve", <railcraft:tank_steel_valve>, [<railcraft:tank_steel_wall>, <minecraft:lever>, <minecraft:iron_bars>]);

recipes.removeByRecipeName("railcraft:tank_iron_gauge#0$2");
recipes.addShaped("it3_rc_iron_tank_gauge", <railcraft:tank_iron_gauge>, [[<ore:paneGlass>, <railcraft:tank_iron_wall>, <ore:paneGlass>],[null, null, null],[null, null, null]]);

recipes.removeByRecipeName("railcraft:tank_steel_gauge#0$2");
recipes.addShaped("it3_rc_steel_tank_gauge", <railcraft:tank_steel_gauge>, [[<ore:paneGlass>, <railcraft:tank_steel_wall>, <ore:paneGlass>],[null, null, null],[null, null, null]]);

// Iron Tank Tooltips
<railcraft:tank_iron_wall>.addTooltip(format.darkRed("Keep in one chunk!!"));
<railcraft:tank_steel_wall>.addTooltip(format.darkRed("Keep in one chunk!!"));


// Metal Posts (Railcraft)
val arrayDyes = [ 
  "Red",
  "Green",
  "Brown",
  "Blue",
  "Purple",
  "Cyan",
  "Silver",
  "Gray",
  "Pink",
  "Lime",
  "Yellow",
  "Light_Blue",
  "Magenta",
  "Orange",
  "White"
] as string[];



for i in 0 to 15 {
  var post = <railcraft:post_metal>.definition.makeStack(i);
  var oreDye = oreDict["dye" ~ arrayDyes[i]];
  
  assembler.recipeBuilder()
    .inputs(<ore:stickIron> * 4, oreDye * 1)
    .outputs(post * 16)
    .property("circuit", 7)
    .duration(24)
    .EUt(12)
    .buildAndRegister();
    


}