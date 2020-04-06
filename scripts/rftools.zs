import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val assembler as RecipeMap = RecipeMap.getByName("assembler");

// RFTools
var smartWrench = <rftools:smartwrench>;
var dimensionalShard = <rftools:dimensional_shard>;
var infusedDiamond = <rftools:infused_diamond>;
var syringe = <rftools:syringe>;
var machineFrame = <rftools:machine_frame>;
var machineBase = <rftools:machine_base>;
var coalGenerator = <rftools:coalgenerator>;
var crafter1 = <rftools:crafter1>;
var crafter2 = <rftools:crafter2>;
var crafter3 = <rftools:crafter3>;
var matterTransmitter = <rftools:matter_transmitter>;
var matterReceiver = <rftools:matter_receiver>;
var dialingDevice = <rftools:dialing_device>;
var simpleDialingDevice = <rftools:simple_dialer>;
var destinationAnalyzer = <rftools:destination_analyzer>;
var matterBooster = <rftools:matter_booster>;
var chargedPorter = <rftools:charged_porter>;
var advChargedPorter = <rftools:advanced_charged_porter>;
var simpleCell = <rftools:powercell_simple>;
var mediumCell = <rftools:powercell>;
var advCell = <rftools:powercell_advanced>;
var cellCard = <rftools:powercell_card>;
var elevator = <rftools:elevator>;
var booster = <rftools:booster>;
var environmentalController = <rftools:environmental_controller>;
var ecRegeneration = <rftools:regeneration_module>;
var ecRegeneration3 = <rftools:regenerationplus_module>;
var ecSpeed = <rftools:speed_module>;
var ecSpeed3 = <rftools:speedplus_module>;
var ecHaste = <rftools:haste_module>;
var ecHaste3 = <rftools:hasteplus_module>;
var ecSaturation = <rftools:saturation_module>;
var ecSaturation3 = <rftools:saturationplus_module>;
var ecFeatherFalling = <rftools:featherfalling_module>;
var ecFeatherFallingPlus = <rftools:featherfallingplus_module>;
var ecFlight = <rftools:flight_module>;
var ecPeaceful = <rftools:peaceful_module>;
var ecWaterBreathing = <rftools:waterbreathing_module>;
var ecNightVision = <rftools:nightvision_module>;
var ecBlindness = <rftools:blindness_module>;
var ecWeakness = <rftools:weakness_module>;
var ecPoison = <rftools:poison_module>;
var ecSlowness = <rftools:slowness_module>;
var ecGlowing = <rftools:glowing_module>;
var ecLuck = <rftools:luck_module>;
var ecNoTeleport = <rftools:noteleport_module>;
var peaceEssence = <rftools:peace_essence>;
var networkMonitor = <rftools:network_monitor>;
var rfMonitor = <rftools:rf_monitor>;
var liquidMonitor = <rftools:liquid_monitor>;
var powerRelay = <rftools:relay>;
var itemFilter = <rftools:item_filter>;
var redstoneSequencer = <rftools:sequencer_block>;
var redstoneTimer = <rftools:timer_block>;
var redstoneCounter = <rftools:counter_block>;
var redstoneTransmitter = <rftools:redstone_transmitter_block>;
var redstoneReceiver = <rftools:redstone_receiver_block>;
var redstoneLogic = <rftools:logic_block>;
var redstoneInvChecker = <rftools:invchecker_block>;
var redstoneSensor = <rftools:sensor_block>;
var redstoneWire = <rftools:wire_block>;
var infusedEnderpearl = <rftools:infused_enderpearl>;
var modularStorage = <rftools:modular_storage>;
var screen = <rftools:screen>;
var levelEmitter = <rftools:level_emitter>;
var remoteStorage = <rftools:remote_storage>;

var tier1StorageModule = <rftools:storage_module>;
var tier2StorageModule = <rftools:storage_module:1>;
var tier3StorageModule = <rftools:storage_module:2>;

var n_syringeIronGolem = syringe.withTag({mobName: "Iron Golem", level: 10, mobId: "minecraft:villager_golem"});
var n_syringePolarBear = syringe.withTag({mobName: "Polar Bear", level: 10, mobId: "minecraft:polar_bear"});
var n_syringeHorse = syringe.withTag({mobName: "Horse", level: 10, mobId: "minecraft:horse"});
var n_syringeZombieHorse = syringe.withTag({mobName: "Zombie Horse", level: 10, mobId: "minecraft:zombie_horse"});
var n_syringeRabbit = syringe.withTag({mobName: "Rabbit", level: 10, mobId: "minecraft:rabbit"});
var n_syringeZombie = syringe.withTag({mobName: "Zombie", level: 10, mobId: "minecraft:zombie"});
var n_syringeAngryZombie = syringe.withTag({mobName: "Angry Zombie", level: 10, mobId: "thaumcraft:brainyzombie"});
var n_syringeChicken = <rftools:syringe>.withTag({mobName: "Chicken", level: 10, mobId: "minecraft:chicken"});
var n_syringeBat = <rftools:syringe>.withTag({mobName: "Bat", level: 10, mobId: "minecraft:bat"});
var n_syringeWasp = <rftools:syringe>.withTag({mobName: "Wasp", level: 10, mobId: "biomesoplenty:wasp"});
var n_syringeParrot = <rftools:syringe>.withTag({mobName: "Parrot", level: 10, mobId: "minecraft:parrot"});
var n_syringeGhast = <rftools:syringe>.withTag({mobName: "Ghast", level: 10, mobId: "minecraft:ghast"});
var n_syringeButterfly = <rftools:syringe>.withTag({mobName: "Butterfly", level: 10, mobId: "biomesoplenty:butterfly"});
var n_syringeSnowman = <rftools:syringe>.withTag({mobName: "Snow Golem", level: 10, mobId: "minecraft:snowman"});
var n_syringeMooshroom = <rftools:syringe>.withTag({mobName: "Mooshroom", level: 10, mobId: "minecraft:mooshroom"});
var n_syringeOcelot = <rftools:syringe>.withTag({mobName: "Ocelot", level: 10, mobId: "minecraft:ocelot"});
var n_syringeGuardian = <rftools:syringe>.withTag({mobName: "Guardian", level: 10, mobId: "minecraft:guardian"});
var n_syringeDonkey = <rftools:syringe>.withTag({mobName: "Donkey", level: 10, mobId: "minecraft:donkey"});
var n_syringeWolf = <rftools:syringe>.withTag({mobName: "Wolf", level: 10, mobId: "minecraft:wolf"});
var n_syringeBlaze = <rftools:syringe>.withTag({mobName: "Blaze", level: 10, mobId: "minecraft:blaze"});
var n_syringeEnderman = <rftools:syringe>.withTag({mobName: "Enderman", level: 10, mobId: "minecraft:enderman"});
var n_syringeShulker = <rftools:syringe>.withTag({mobName: "Shulker", level: 10, mobId: "minecraft:shulker"});
var n_syringeEndermite = <rftools:syringe>.withTag({mobName: "Endermite", level: 10, mobId: "minecraft:endermite"});
var n_syringeCaveSpider = <rftools:syringe>.withTag({mobName: "Cave Spider", level: 10, mobId: "minecraft:cave_spider"});
var n_syringeSquid = <rftools:syringe>.withTag({mobName: "Squid", level: 10, mobId: "minecraft:squid"});
var n_syringeWitch = <rftools:syringe>.withTag({mobName: "Witch", level: 10, mobId: "minecraft:witch"});
var n_syringeSlime = <rftools:syringe>.withTag({mobName: "Slime", level: 10, mobId: "minecraft:slime"});

// Vanilla
var o_lapis = <ore:gemLapis>;
var prismarineCrystals = <minecraft:prismarine_crystals>;
var emerald = <minecraft:emerald>;
var diamond = <minecraft:diamond>;
var glass_bottle = <minecraft:glass_bottle>;
var slabStone = <minecraft:stone_slab>;
var o_furnace = <ore:craftingFurnace>;
var o_coalBlock = <ore:blockCoal>;
var o_polishedAndesite = <ore:stoneAndesitePolished>;
var craftingTable = <minecraft:crafting_table>;
var o_redstoneTorch = <ore:craftingRedstoneTorch>;
var comparator = <minecraft:comparator>;
var chorusFruitPopped = <minecraft:chorus_fruit_popped>;
var o_redstone = <ore:dustRedstone>;
var redstoneDust = <minecraft:redstone>;
var o_redstoneBlock = <ore:blockRedstone>;
var o_goldBlock = <ore:blockGold>;
var o_goldNugget = <ore:nuggetGold>;
var o_diamondBlock = <ore:blockDiamond>;
var dragonBreath = <minecraft:dragon_breath>;
var spectralArrow = <minecraft:spectral_arrow>;
var cobweb = <minecraft:web>;
var bucket = <minecraft:bucket>;
var o_enderPearl = <ore:gemEnderPearl>;
var n_goldPickaxeEff3 = <minecraft:golden_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 32 as short}]});
var n_goldPickaxeEff5 = <minecraft:golden_pickaxe>.withTag({ench: [{lvl: 5 as short, id: 32 as short}]});
var o_prismarine = <ore:gemPrismarine>;
var o_netherQuartz = <ore:gemNetherQuartz>;
var chest = <ore:chest>;
var netherQuartz = <ore:gemNetherQuartz>;
var enderPearl = <minecraft:ender_pearl>;
var enderChest = <minecraft:ender_chest>;

var n_enchantedBookEff1 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 32 as short}]});
var n_enchantedBookEff3 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 32 as short}]});
var n_enchantedBookFF1 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 2 as short}]});
var n_enchantedBookFF4 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]});
var n_enchantedBookLotS2 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 61 as short}]});

var n_splashRegen = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_regeneration"});
var n_splashRegen2 = <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_regeneration"});
var n_splashSpeed = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_swiftness"});
var n_splashSpeed2 = <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_swiftness"});
var n_splashWaterBreathing = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_water_breathing"});
var n_splashNightVision = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_night_vision"});
var n_splashSlowness = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_slowness"});
var n_splashPoison = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_poison"});
var n_splashWeakness = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_weakness"});
var n_splashNausea = <minecraft:splash_potion>.withTag({Potion: "minecraft:confusionLong"});

// GT
var o_tinySteelPipe = <ore:pipeTinySteel>;
var lvMachineCasing = <gregtech:machine_casing:1>;
var o_plateGold = <ore:plateGold>;
var o_plateIron = <ore:plateIron>;
var o_plateSteel = <ore:plateSteel>;
var o_plateStainlessSteel = <ore:plateStainlessSteel>;
var o_plateLapis = <ore:plateLapis>;
var o_plateNaquadahAlloy = <ore:plateNaquadahAlloy>;
var o_plateTitanium = <ore:plateTitanium>;
var o_plateWroughtIron = <ore:plateWroughtIron>;
var o_plateObsidian = <ore:plateObsidian>;
var o_rodBrass = <ore:stickBrass>;
var o_basicCircuit = <ore:circuitBasic>;
var o_goodCircuit = <ore:circuitGood>;
var o_advCircuit = <ore:circuitAdvanced>;
var o_eliteCircuit = <ore:circuitElite>;
var o_masterCircuit = <ore:circuitMaster>;
var mvRobotArm = <metaitem:robot.arm.mv>;
var hvRobotArm = <metaitem:robot.arm.hv>;
var lvEmitter = <metaitem:emitter.lv>;
var mvEmitter = <metaitem:emitter.mv>;
var hvEmitter = <metaitem:emitter.hv>;
var evEmitter = <metaitem:emitter.ev>;
var ivEmitter = <metaitem:emitter.iv>;
var luvEmitter = <metaitem:emitter.luv>;
var lvSensor = <metaitem:sensor.lv>;
var mvSensor = <metaitem:sensor.mv>;
var hvSensor = <metaitem:sensor.hv>;
var evSensor = <metaitem:sensor.ev>;
var ivSensor = <metaitem:sensor.iv>;
var evFieldGenerator = <metaitem:field.generator.ev>;
var ivFieldGenerator = <metaitem:field.generator.iv>;
var lvMotor = <metaitem:electric.motor.lv>;
var mvMotor = <metaitem:electric.motor.mv>;
var hvMotor = <metaitem:electric.motor.hv>;
var lvConveyor = <metaitem:conveyor.lv>;
var mvConveyor = <metaitem:conveyor.mv>;
var hvConveyor = <metaitem:conveyor.hv>;
var quantumEye = <metaitem:quantumeye>;
var o_lapotron = <ore:batteryMaster>;
var lapotronOrb = <metaitem:energy.lapotronicorb>;
var lapotronCluster = <metaitem:energy.lapotronicorb2>;
var radon = <liquid:radon>;
var o_steelGear = <ore:gearSteel>;
var o_ironGear = <ore:gearIron>;
var o_quartzite = <ore:gemQuartzite>;
var o_anyQuartz = <ore:craftingQuartz>;
var batterySodiumLV = <metaitem:battery.re.lv.sodium>;
var batterySodiumMV = <metaitem:battery.re.mv.sodium>;
var batterySodiumHV = <metaitem:battery.re.hv.sodium>;
var emeraldLens = <ore:lensEmerald>;
var o_smallSteelPipe = <ore:pipeSmallSteel>;
var plateGlass = <ore:plateGlass>;
var plateIron = <ore:plateIron>;
var circuitBasic = <ore:circuitBasic>;
var plateAluminium = <ore:plateAluminium>;
var circuitAdvanced = <ore:circuitAdvanced>;
var circuitData = <ore:circuitExtreme>;
var plateEnderium = <ore:plateEnderium>;
var plateNetherQuartz = <ore:plateNetherQuartz>;
var blockNetherQuartz = <minecraft:quartz_block>;
var certusQuartz =  <ore:gemCertusQuartz>;
var fluixCrystal = <ore:crystalFluix>;

// Tools
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;
var craftingToolWrenchEmptyTag = <ore:craftingToolWrenchEmptyTag>;

// Other
var mvWire = <ore:wireGtSingleCopper>;
var o_meatFeastPizza = <ore:foodMeatfeastpizza>;
var o_pizza = <ore:foodPizza>;
var galgadorEye = <stevescarts:modulecomponents:45>;
var o_skull = <ore:itemSkull>;

//
// Recipes start
//

recipes.remove(tier1StorageModule);
recipes.remove(tier2StorageModule);
recipes.remove(tier3StorageModule);

recipes.addShaped("rftools_storage_module", tier1StorageModule, [
[null, <ore:chest>, null], 
[o_plateSteel, o_plateWroughtIron, o_plateSteel], 
[netherQuartz, o_basicCircuit, netherQuartz]]);

recipes.addShaped("rftools_storage_module_1", tier2StorageModule, [
[null, <ore:chest>, null], 
[plateAluminium, tier1StorageModule.marked("module"), plateAluminium], 
[certusQuartz, o_goodCircuit, certusQuartz]], function(out, ins, cInfo) {
    return out.withTag(ins.module.tag);
}, function(x,y,z){});

recipes.addShaped("rftools_storage_module_2", tier3StorageModule, [
[null, <ore:chest>, null], 
[o_plateStainlessSteel, tier2StorageModule.marked("module"), o_plateStainlessSteel], 
[fluixCrystal, o_advCircuit, fluixCrystal]], function(out, ins, cInfo) {
    return out.withTag(ins.module.tag);
}, function(x,y,z){});

recipes.remove(smartWrench);
recipes.addShaped("it3_rft_smart_wrench", smartWrench, [[null, craftingToolWrenchEmptyTag], [o_lapis, null]]);

recipes.remove(dimensionalShard);
chemical_reactor.recipeBuilder()
	.inputs([prismarineCrystals, chorusFruitPopped * 2])
	.fluidInputs([<liquid:ender> * 50])
	.outputs(dimensionalShard * 4)
	.duration(80)
	.EUt(30)
	.buildAndRegister();

recipes.remove(infusedDiamond);
chemical_reactor.recipeBuilder()
	.inputs([dimensionalShard * 8, diamond])
	.fluidInputs([<liquid:radon> * 50])
	.outputs(infusedDiamond)
	.duration(100)
	.EUt(30)
	.buildAndRegister();

recipes.remove(infusedEnderpearl);
chemical_reactor.recipeBuilder()
	.inputs([dimensionalShard * 8, o_enderPearl])
	.fluidInputs([<liquid:radon> * 50])
	.outputs(infusedEnderpearl)
	.duration(100)
	.EUt(30)
	.buildAndRegister();	

recipes.remove(syringe);
recipes.addShaped("it3_rft_syringe", syringe, [
	[o_smallSteelPipe, null, null],
	[null, o_smallSteelPipe, null],
	[null, null, glass_bottle]]);

recipes.remove(machineFrame);
recipes.addShaped("it3_rft_machine_frame", machineFrame, [
	[o_plateWroughtIron, o_plateGold, o_plateWroughtIron],
	[mvWire, lvMachineCasing, mvWire]]);

recipes.remove(machineBase);
recipes.addShaped("it3_rft_machine_base", machineBase, [
	[o_plateWroughtIron, craftingToolHardHammerEmptyTag, o_plateWroughtIron],
	[slabStone, slabStone, slabStone]]);

scripts.functions.disableItem(coalGenerator);
  
recipes.remove(crafter1);
recipes.remove(crafter2);
recipes.remove(crafter3);
recipes.addShaped("it3_rft_crafter1", crafter1, [
	[mvRobotArm, craftingTable, mvMotor],
	[o_goodCircuit, machineFrame, o_goodCircuit],
	[<ore:plateAluminium>, craftingTable, <ore:plateAluminium>]]);
  
recipes.addShaped("it3_rft_crafter2", crafter2, [
	[mvRobotArm, craftingTable, mvMotor],
	[o_goodCircuit, crafter1, o_goodCircuit],
	[<ore:plateAluminium>, craftingTable, <ore:plateAluminium>]]);
  
recipes.addShaped("it3_rft_crafter3", crafter3, [
	[mvRobotArm, craftingTable, mvMotor],
	[o_goodCircuit, crafter2, o_goodCircuit],
	[<ore:plateAluminium>, craftingTable, <ore:plateAluminium>]]);


recipes.remove(matterReceiver);
recipes.remove(matterTransmitter);
recipes.remove(chargedPorter);
recipes.remove(advChargedPorter);
recipes.remove(dialingDevice);
recipes.remove(simpleDialingDevice);
recipes.remove(destinationAnalyzer);
recipes.remove(matterBooster);

recipes.addShaped("it3_rft_matter_receiver", matterReceiver, [
	[o_plateNaquadahAlloy, evFieldGenerator, o_plateNaquadahAlloy],
	[evSensor, machineFrame, evSensor],
	[o_eliteCircuit, evEmitter, o_eliteCircuit]]);
recipes.addShaped("it3_rft_matter_transmitter", matterTransmitter, [
	[o_plateNaquadahAlloy, evFieldGenerator, o_plateNaquadahAlloy],
	[evEmitter, machineFrame, evEmitter],
	[o_eliteCircuit, evSensor, o_eliteCircuit]]);
recipes.addShaped("it3_rft_charged_porter", chargedPorter, [
	[o_plateNaquadahAlloy, o_lapotron, o_plateNaquadahAlloy],
	[evFieldGenerator, infusedDiamond, evFieldGenerator],
	[ivSensor, o_lapotron, ivEmitter]]);
recipes.addShaped("it3_rft_adv_charged_porter", advChargedPorter, [
	[o_masterCircuit, lapotronOrb, o_masterCircuit],
	[ivFieldGenerator, chargedPorter, ivFieldGenerator],
	[o_masterCircuit, lapotronOrb, o_masterCircuit]]);
recipes.addShaped("it3_rft_dialing_device", dialingDevice, [
	[o_plateTitanium, evEmitter, o_plateTitanium],
	[evSensor, machineFrame, evSensor],
	[o_plateTitanium, o_masterCircuit, o_plateTitanium]]);
recipes.addShaped("it3_rft_simple_dialing_device", simpleDialingDevice, [
	[o_plateTitanium, evEmitter, o_plateTitanium],
	[comparator, machineBase, o_eliteCircuit]]);
recipes.addShaped("it3_rft_dest_analyzer", destinationAnalyzer, [
	[o_plateTitanium, o_eliteCircuit, o_plateTitanium],
	[o_eliteCircuit, machineFrame, o_eliteCircuit],
	[o_plateTitanium, evSensor, o_plateTitanium]]);
recipes.addShaped("it3_rft_matter_booster", matterBooster, [
	[o_plateTitanium, ivFieldGenerator, o_plateTitanium],
	[ivEmitter, machineFrame, ivEmitter],
	[o_plateTitanium, lapotronOrb, o_plateTitanium]]);


recipes.remove(simpleCell);
recipes.remove(mediumCell);
recipes.remove(advCell);
recipes.remove(cellCard);

recipes.addShaped("it3_rft_simple_cell", simpleCell, [
	[o_redstoneBlock, batterySodiumLV, o_redstoneBlock],
	[o_netherQuartz, machineFrame, o_netherQuartz],
	[o_redstoneBlock, diamond, o_redstoneBlock]]);
recipes.addShaped("it3_rft_med_cell", mediumCell, [
	[o_redstone, batterySodiumMV, o_redstone],
	[o_prismarine, simpleCell, o_prismarine],
	[o_redstone, emerald, o_redstone]]);
recipes.addShaped("it3_rft_med_cell2", mediumCell, [
	[o_redstoneBlock, batterySodiumMV, o_redstoneBlock],
	[o_prismarine, machineFrame, o_prismarine],
	[o_redstoneBlock, emerald, o_redstoneBlock]]);
recipes.addShaped("it3_rft_adv_cell", advCell, [
	[o_redstoneBlock, batterySodiumHV, o_redstoneBlock],
	[infusedDiamond, mediumCell, infusedDiamond],
	[o_redstoneBlock, infusedDiamond, o_redstoneBlock]]);
recipes.addShaped("it3_rft_cell_card", cellCard, [
	[o_quartzite, o_rodBrass, o_quartzite],
	[o_rodBrass, o_basicCircuit, o_rodBrass],
	[o_quartzite, o_rodBrass, o_quartzite]]);


recipes.remove(elevator);
recipes.addShaped("it3_rft_elevator", elevator, [
	[o_ironGear, o_basicCircuit, o_ironGear],
	[lvMotor, machineFrame, lvMotor],
	[o_ironGear, o_basicCircuit, o_ironGear]]);


recipes.remove(environmentalController);
recipes.remove(booster);

recipes.addShaped("it3_rft_env_controller", environmentalController, [
	[evEmitter, evFieldGenerator, evEmitter],
	[infusedDiamond, machineFrame, infusedDiamond],
	[o_plateTitanium, o_plateTitanium, o_plateTitanium]]);
recipes.addShaped("it3_rft_booster", booster, [
	[lvEmitter, emeraldLens, lvEmitter],
	[dimensionalShard, machineFrame, dimensionalShard],
	[o_plateStainlessSteel, o_plateStainlessSteel, o_plateStainlessSteel]]);

recipes.remove(ecRegeneration);
recipes.remove(ecRegeneration3);
recipes.remove(ecSpeed);
recipes.remove(ecSpeed3);
recipes.remove(ecHaste);
recipes.remove(ecHaste3);
recipes.remove(ecSaturation);
recipes.remove(ecSaturation3);
recipes.remove(ecFeatherFalling);
recipes.remove(ecFeatherFallingPlus);
recipes.remove(ecFlight);
recipes.remove(peaceEssence);
recipes.remove(ecPeaceful);
recipes.remove(ecWaterBreathing);
recipes.remove(ecNightVision);
recipes.remove(ecBlindness);
recipes.remove(ecWeakness);
recipes.remove(ecPoison);
recipes.remove(ecSlowness);
recipes.remove(ecGlowing);
recipes.remove(ecLuck);
recipes.remove(ecNoTeleport);

recipes.addShaped("it3_rft_ec_regeneration", ecRegeneration, [
	[null, n_syringeIronGolem.giveBack(syringe), null],
	[n_splashRegen.giveBack(<minecraft:glass_bottle>), o_plateGold, n_splashRegen.giveBack(<minecraft:glass_bottle>)],
	[null, o_goodCircuit, null]]);
recipes.addShaped("it3_rft_ec_regen2", ecRegeneration3, [
	[n_syringePolarBear.giveBack(syringe), n_syringeIronGolem.giveBack(syringe), n_syringePolarBear.giveBack(syringe)],
	[n_splashRegen2.giveBack(<minecraft:glass_bottle>), ecRegeneration, n_splashRegen2.giveBack(<minecraft:glass_bottle>)],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_ec_speed", ecSpeed, [
	[null, n_syringeHorse.giveBack(syringe), null],
	[n_splashSpeed.giveBack(<minecraft:glass_bottle>), o_plateGold, n_splashSpeed.giveBack(<minecraft:glass_bottle>)],
	[null, o_goodCircuit, null]]);
recipes.addShaped("it3_rft_ec_speed2", ecSpeed3, [
	[n_syringeZombieHorse.giveBack(syringe), n_syringeHorse.giveBack(syringe), n_syringeZombieHorse.giveBack(syringe)],
	[n_splashSpeed2.giveBack(<minecraft:glass_bottle>), ecSpeed, n_splashSpeed2.giveBack(<minecraft:glass_bottle>)],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_ec_haste", ecHaste, [
	[null, n_goldPickaxeEff3, null],
	[n_enchantedBookEff1, o_plateGold, n_enchantedBookEff1],
	[null, o_goodCircuit, null]]);
recipes.addShaped("it3_rft_ec_haste2", ecHaste3, [
	[n_syringeRabbit.giveBack(syringe), n_goldPickaxeEff5, n_syringeRabbit.giveBack(syringe)],
	[n_enchantedBookEff3, ecHaste, n_enchantedBookEff3],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_ec_sat", ecSaturation, [
	[null, n_syringeZombie.giveBack(syringe), null],
	[o_pizza, o_plateGold, o_pizza],
	[null, o_goodCircuit, null]]);
recipes.addShaped("it3_rft_ec_sat2", ecSaturation3, [
	[n_syringeAngryZombie.giveBack(syringe), n_syringeZombie.giveBack(syringe), n_syringeAngryZombie.giveBack(syringe)],
	[o_meatFeastPizza, ecSaturation, o_meatFeastPizza],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_feather_fall", ecFeatherFalling, [
	[null, n_syringeChicken.giveBack(syringe), null],
	[n_enchantedBookFF1, o_plateGold, n_enchantedBookFF1],
	[null, o_goodCircuit, null]]);
recipes.addShaped("it3_rft_feath_fall_plus", ecFeatherFallingPlus, [
	[n_syringeBat.giveBack(syringe), n_syringeChicken.giveBack(syringe), n_syringeBat.giveBack(syringe)],
	[n_enchantedBookFF4, ecFeatherFalling, n_enchantedBookFF4],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_flight", ecFlight, [
	[n_syringeBat.giveBack(syringe), n_syringeGhast.giveBack(syringe), n_syringeParrot.giveBack(syringe)],
	[dragonBreath, o_plateGold, dragonBreath],
	[n_syringeWasp.giveBack(syringe), o_eliteCircuit, n_syringeButterfly.giveBack(syringe)]]);
recipes.addShaped("it3_rft_peace", peaceEssence, [
	[n_syringeIronGolem.giveBack(syringe), n_syringeSnowman.giveBack(syringe), n_syringeMooshroom.giveBack(syringe)],
	[n_syringeWolf.giveBack(syringe), infusedDiamond, n_syringeOcelot.giveBack(syringe)],
	[n_syringeDonkey.giveBack(syringe), n_syringeGuardian.giveBack(syringe), n_syringeBat.giveBack(syringe)]]);
recipes.addShaped("it3_rft_peaceful", ecPeaceful, [
	[null, peaceEssence, null],
	[o_skull, o_plateGold, o_skull],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_water_breath", ecWaterBreathing, [
	[null, n_syringeGuardian.giveBack(syringe), null],
	[n_splashWaterBreathing.giveBack(<minecraft:glass_bottle>), o_plateGold, n_splashWaterBreathing.giveBack(<minecraft:glass_bottle>)],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_night_vis", ecNightVision, [
	[null, n_syringeWitch.giveBack(syringe), null],
	[n_splashNightVision.giveBack(<minecraft:glass_bottle>), o_plateGold, n_splashNightVision.giveBack(<minecraft:glass_bottle>)],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_blindness", ecBlindness, [
	[null, n_syringeSquid.giveBack(syringe), null],
	[n_splashNausea.giveBack(<minecraft:glass_bottle>), o_plateObsidian, n_splashNausea.giveBack(<minecraft:glass_bottle>)],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_weak", ecWeakness, [
	[null, n_syringeBat.giveBack(syringe), null],
	[n_splashWeakness.giveBack(<minecraft:glass_bottle>), o_plateObsidian, n_splashWeakness.giveBack(<minecraft:glass_bottle>)],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_poison", ecPoison, [
	[null, n_syringeCaveSpider.giveBack(syringe), null],
	[n_splashPoison.giveBack(<minecraft:glass_bottle>), o_plateObsidian, n_splashPoison.giveBack(<minecraft:glass_bottle>)],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_slow", ecSlowness, [
	[null, n_syringeSlime.giveBack(syringe), null],
	[n_splashSlowness.giveBack(<minecraft:glass_bottle>), o_plateObsidian, n_splashNightVision.giveBack(<minecraft:glass_bottle>)],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_glow", ecGlowing, [
	[spectralArrow, n_syringeBlaze, spectralArrow],
	[spectralArrow, o_plateGold, spectralArrow],
	[spectralArrow, o_goodCircuit, spectralArrow]]);
recipes.addShaped("it3_rft_luck", ecLuck, [
	[null, n_syringeShulker, null],
	[n_enchantedBookLotS2, o_plateGold, n_enchantedBookLotS2],
	[null, o_advCircuit, null]]);
recipes.addShaped("it3_rft_no_teleport", ecNoTeleport, [
	[n_syringeEnderman, n_syringeEndermite, n_syringeEnderman],
	[cobweb, o_plateObsidian, cobweb],
	[null, o_advCircuit, null]]);

recipes.remove(networkMonitor);
recipes.addShaped("it3_rft_network_mon", networkMonitor, [
	[o_plateIron, lvSensor, o_plateIron],
	[o_plateIron, o_redstone, o_plateIron],
	[o_plateIron, o_plateIron, o_plateIron]]);

recipes.remove(rfMonitor);
recipes.addShaped("it3_rft_rf_mon", rfMonitor, [
	[null, lvSensor, null],
	[o_redstone, machineFrame, o_redstone],
	[null, o_basicCircuit, null]]);

recipes.remove(liquidMonitor);
recipes.addShaped("it3_rft_liquid_mon", liquidMonitor, [
	[null, lvSensor, null],
	[bucket, machineFrame, bucket],
	[null, o_basicCircuit, null]]);


recipes.remove(redstoneWire);
recipes.addShaped("it3_rft_redstone_wire", redstoneWire * 4, [
	[null, craftingToolHardHammerEmptyTag, null],
	[o_redstone, o_redstone, o_redstone],
	[slabStone, slabStone, slabStone]]);
assembler.recipeBuilder()
	.inputs(redstoneDust * 3, slabStone * 3)
	.outputs(redstoneWire * 4)
	.duration(600)
	.EUt(4)
	.buildAndRegister();

recipes.remove(redstoneReceiver);
recipes.addShaped("it3_rft_redstone_receiver", redstoneReceiver, [
	[null, mvSensor, null],
	[null, redstoneWire, null],
	[null, o_enderPearl, null]]);
recipes.addShapeless("it3_rft_redstone_receiver2", redstoneReceiver, [redstoneReceiver]);

recipes.remove(redstoneTransmitter);
recipes.addShaped("it3_rft_redstone_transmitter", redstoneTransmitter, [
	[null, mvEmitter, null],
	[null, redstoneWire, null],
	[null, o_enderPearl, null]]);
recipes.addShapeless("it3_rft_redstone_transmitter2", redstoneTransmitter, [redstoneTransmitter]);

recipes.remove(redstoneCounter);
recipes.addShaped("it3_rft_rs_counter", redstoneCounter, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, o_redstone, null]]);

recipes.remove(redstoneTimer);
recipes.addShaped("it3_rft_rs_timer", redstoneTimer, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, o_goldNugget, null]]);

recipes.remove(redstoneLogic);
recipes.addShaped("it3_rft_rs_logic", redstoneLogic, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, o_anyQuartz, null]]);

recipes.remove(redstoneSequencer);
recipes.addShaped("it3_rft_rs_sequencer", redstoneSequencer, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, o_redstoneTorch, null]]);

recipes.remove(redstoneSensor);
recipes.addShaped("it3_rft_rs_sensor", redstoneSensor, [
	[null, lvSensor, null],
	[null, redstoneWire, null],
	[null, o_basicCircuit, null]]);

recipes.remove(redstoneInvChecker);
recipes.addShaped("it3_rft_inv_checker", redstoneInvChecker, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, comparator, null]]);

recipes.remove(modularStorage);
recipes.addShaped("it3_rft_mod_storage", modularStorage, [
	[plateAluminium, chest, plateAluminium], 
	[netherQuartz, machineFrame, netherQuartz], 
	[plateAluminium, circuitAdvanced, plateAluminium]]);

recipes.remove(remoteStorage);
recipes.addShaped("it3_rft_remote_storage", remoteStorage, [
	[plateEnderium, enderChest, plateEnderium], 
	[netherQuartz, machineFrame, netherQuartz], 
	[plateEnderium, circuitData, plateEnderium]]);

recipes.remove(levelEmitter);
recipes.addShaped("it3_rft_level_emitter", levelEmitter, [
	[null, enderPearl, null],
	[null, redstoneWire, null],
	[null, comparator, null]]);

recipes.remove(screen);
recipes.addShaped("it3_rft_screen", screen, [
	[plateGlass, plateGlass, plateGlass],
	[plateIron, machineBase, plateIron],
	[circuitBasic, plateIron, circuitBasic]]);

recipes.remove(<rftools:builder>);
recipes.addShaped("infitech3_rftools_builder", <rftools:builder>, [
  [hvRobotArm, <minecraft:ender_pearl>, hvRobotArm], 
  [hvSensor, <rftools:machine_frame>, hvSensor], 
  [hvConveyor, craftingToolWrenchEmptyTag, hvConveyor]]);

var shieldProjector1 = <rftools:shield_block1>;
var shieldProjector2 = <rftools:shield_block2>;
var shieldProjector3 = <rftools:shield_block3>;
var shieldProjector4 = <rftools:shield_block4>;

recipes.remove(shieldProjector1);
recipes.addShaped("infitech3_rftools_shield_block1", shieldProjector1, [
  [<minecraft:gold_ingot>, hvEmitter, <minecraft:gold_ingot>], 
  [<minecraft:redstone>, <rftools:machine_frame>, <minecraft:redstone>], 
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

recipes.remove(shieldProjector2);
recipes.addShaped("infitech3_rftools_shield_block2", shieldProjector2, [
  [<minecraft:redstone_block>, evEmitter, <minecraft:redstone_block>], 
  [<minecraft:obsidian>, <rftools:machine_frame>, <minecraft:obsidian>], 
  [<minecraft:redstone_block>, <minecraft:obsidian>, <minecraft:redstone_block>]]);

recipes.remove(shieldProjector3);  
recipes.addShaped("infitech3_rftools_shield_block3", shieldProjector3, [
  [<rftools:dimensional_shard>, ivEmitter, <rftools:dimensional_shard>], 
  [<minecraft:obsidian>, <rftools:machine_frame>, <minecraft:obsidian>], 
  [<rftools:dimensional_shard>, <minecraft:obsidian>, <rftools:dimensional_shard>]]);

recipes.remove(shieldProjector4);  
recipes.addShaped("infitech3_rftools_shield_block4", shieldProjector4, [
  [<minecraft:nether_star>, luvEmitter, <rftools:dimensional_shard>], 
  [<minecraft:obsidian>, <rftools:machine_frame>, <minecraft:obsidian>], 
  [<rftools:dimensional_shard>, <minecraft:obsidian>, <minecraft:nether_star>]]);
  
recipes.remove(<rftools:spawner>);  
recipes.addShaped("infitech3_rftools_spawner", <rftools:spawner>, [
  [<minecraft:redstone>, mvEmitter, <minecraft:redstone>], 
  [<minecraft:ender_pearl>, <rftools:machine_frame>, emeraldLens], 
  [<minecraft:redstone>, mvEmitter, <minecraft:redstone>]]);
  
recipes.remove(<rftools:matter_beamer>);  
recipes.addShaped("infitech3_rftools_matter_beamer", <rftools:matter_beamer>, [
  [<minecraft:redstone_block>, lvEmitter, <minecraft:redstone_block>], 
  [<minecraft:glowstone>, <rftools:machine_frame>, <minecraft:glowstone>], 
  [<minecraft:redstone_block>, <minecraft:glowstone>, <minecraft:redstone_block>]]);
  
recipes.remove(<rftools:block_protector>);
recipes.addShaped("infitech3_rftools_block_protector", <rftools:block_protector>, [
  [hvEmitter, <rftools:shield_template_block>, hvEmitter], 
  [<rftools:shield_template_block>, <rftools:machine_frame>, <rftools:shield_template_block>], 
  [hvSensor, <rftools:shield_template_block>, hvSensor]]);
  
recipes.remove(<rftools:item_filter>);
recipes.addShaped("infitech3_rftools_item_filter", <rftools:item_filter>, [
  [<minecraft:paper>, <ore:chest>, <minecraft:paper>], 
  [lvConveyor, <rftools:machine_base>, lvMotor], 
  [<minecraft:paper>, <minecraft:redstone_torch>, <minecraft:paper>]]);

recipes.remove(<rftools:endergenic>);
recipes.addShaped("infitech3_rftools_endergenic_generator", <rftools:endergenic>, [
  [<minecraft:diamond>, <minecraft:ender_pearl>, <minecraft:diamond>], 
  [<minecraft:ender_pearl>, <rftools:machine_frame>, <minecraft:ender_pearl>], 
  [<minecraft:diamond>, lvEmitter, <minecraft:diamond>]]);
  
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped("infitech3_rftools_storage_scanner", <rftools:storage_scanner>, [
  [<minecraft:redstone_torch>, mvSensor, <minecraft:redstone_torch>], 
  [<minecraft:gold_ingot>, <rftools:machine_frame>, <minecraft:gold_ingot>], 
  [<minecraft:redstone_torch>, <minecraft:ender_pearl>, <minecraft:redstone_torch>]]);

// Quarry Shape Card needs tool heads instead of vanilla tools
var quarry_shape_card = <rftools:shape_card:2>;
recipes.removeByRecipeName("rftools:shape_card_quarry");
recipes.addShaped("it3_rftools_shape_card_quarry", quarry_shape_card, [
  [<minecraft:redstone>, <ore:toolHeadPickaxeDiamond>, <minecraft:redstone>], 
  [<minecraft:iron_ingot>, <rftools:shape_card>, <minecraft:iron_ingot>], 
  [<minecraft:redstone>, <ore:toolHeadShovelDiamond>, <minecraft:redstone>]]);

