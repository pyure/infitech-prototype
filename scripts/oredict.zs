#priority 100

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;

/* ===== Daclaring variables ===== */

//Ingot
var ingotSteelGt = <ore:ingotSteelGt>;


//Dust
var dustBronzeGt = <ore:dustBronzeGt>;
var dustEnderiumGt = <ore:dustEnderiumGt>;
var dustSignalumGt = <ore:dustSignalumGt>;
var dustSaltpeterGt = <ore:dustSaltpeterGt>;
var fuelCoke = <ore:fuelCoke>;

// Any Quartz
<ore:craftingQuartz>.addAll(<ore:gemQuartzite>);
<ore:craftingQuartz>.addAll(<ore:gemCertusQuartz>);
<ore:craftingQuartz>.addAll(<ore:gemNetherQuartz>);


/* =====Adding Items===== */

//Ingot
ingotSteelGt.add(<gregtech:meta_item_1:10184>);

//Dust
dustBronzeGt.add(<gregtech:meta_item_1:2095>);
dustEnderiumGt.add(<gregtech:meta_item_1:2702>);
dustSignalumGt.add(<gregtech:meta_item_1:2703>);
dustSaltpeterGt.add(<gregtech:meta_item_1:2156>);
fuelCoke.add(<gregtech:meta_item_1:8997>);//this is the coke added by Gregic Additions. Up until now it was just "gemCoke" which disallowed it to be used in various machines. This exact script fixes this behavior.

//Steam Turbines (for FTBQ)
var oreSteamTurbines = <ore:turbineSteamAll>;
oreSteamTurbines.add(<meta_tile_entity:steam_turbine.lv>); // LV
oreSteamTurbines.add(<meta_tile_entity:steam_turbine.mv>); // MV
oreSteamTurbines.add(<meta_tile_entity:steam_turbine.hv>); // HV

//Gas Turbines (for FTBQ)
var oreGasTurbines = <ore:turbineGasAll>;
oreGasTurbines.add(<meta_tile_entity:gas_turbine.lv>); // LV
oreGasTurbines.add(<meta_tile_entity:gas_turbine.mv>); // MV
oreGasTurbines.add(<meta_tile_entity:gas_turbine.hv>); // HV

//Diesel Turbines (for FTBQ)
var oreDieselTurbines = <ore:turbineDieselAll>;
oreDieselTurbines.add(<meta_tile_entity:diesel_generator.lv>); // LV
oreDieselTurbines.add(<meta_tile_entity:diesel_generator.mv>); // MV
oreDieselTurbines.add(<meta_tile_entity:diesel_generator.hv>); // HV

//Boiler Controllers (for FTBQ)
var oreControllerBoiler = <ore:controllerBoilerAll>;
oreControllerBoiler.add(<meta_tile_entity:large_boiler.bronze>); // LV
oreControllerBoiler.add(<meta_tile_entity:large_boiler.steel>); // MV
oreControllerBoiler.add(<meta_tile_entity:large_boiler.titanium>); // HV
oreControllerBoiler.add(<meta_tile_entity:large_boiler.tungstensteel>); // HV+1

//Cutting Machine (for FTBQ)
var oreCuttingMachine = <ore:cuttingMachineAll>;
oreCuttingMachine.add(<meta_tile_entity:cutter.lv>); // LV
oreCuttingMachine.add(<meta_tile_entity:cutter.mv>); // MV
oreCuttingMachine.add(<meta_tile_entity:cutter.hv>); // HV
oreCuttingMachine.add(<meta_tile_entity:cutter.ev>); // HV+1

//Lathe (for FTBQ)
var oreLathe = <ore:latheAll>;
oreLathe.add(<meta_tile_entity:lathe.lv>); // LV
oreLathe.add(<meta_tile_entity:lathe.mv>); // MV
oreLathe.add(<meta_tile_entity:lathe.hv>); // HV
oreLathe.add(<meta_tile_entity:lathe.ev>); // HV+1

//SteamMacerator (for FTBQ)
var oreSteamMacerator = <ore:steamMaceratorAll>;
oreSteamMacerator.add(<meta_tile_entity:steam_macerator_bronze>);// Steam
oreSteamMacerator.add(<meta_tile_entity:steam_macerator_steel>); // HPSteam

//Macerator (for FTBQ)
var oreMacerator = <ore:maceratorAll>;
oreMacerator.add(<meta_tile_entity:macerator.lv>); // LV
oreMacerator.add(<meta_tile_entity:macerator.mv>); // MV
oreMacerator.add(<meta_tile_entity:macerator.hv>); // HV
oreMacerator.add(<meta_tile_entity:macerator.ev>); // HV+1
oreMacerator.add(<meta_tile_entity:steam_macerator_bronze>);// Steam
oreMacerator.add(<meta_tile_entity:steam_macerator_steel>); // HPSteam

//Battery Buffer LV (for FTBQ)
var oreBatteryBufferLV = <ore:batteryBufferLVAll>;
oreBatteryBufferLV.add(<meta_tile_entity:battery_buffer.lv.1>);// Steam
oreBatteryBufferLV.add(<meta_tile_entity:battery_buffer.lv.4>); // HPSteam
oreBatteryBufferLV.add(<meta_tile_entity:battery_buffer.lv.9>); // LV
oreBatteryBufferLV.add(<meta_tile_entity:battery_buffer.lv.16>); // MV

//Bender (for FTBQ)
var oreBender = <ore:benderAll>;
oreBender.add(<meta_tile_entity:bender.lv>); // LV
oreBender.add(<meta_tile_entity:bender.mv>); // MV
oreBender.add(<meta_tile_entity:bender.hv>); // HV
oreBender.add(<meta_tile_entity:bender.ev>); // HV+1

//Polarizer (for FTBQ)
var orePolarizer = <ore:polarizerAll>;
orePolarizer.add(<meta_tile_entity:polarizer.lv>); // LV
orePolarizer.add(<meta_tile_entity:polarizer.mv>); // MV
orePolarizer.add(<meta_tile_entity:polarizer.hv>); // HV
orePolarizer.add(<meta_tile_entity:polarizer.ev>); // HV+1

//Wiremill (for FTBQ)
var oreWiremill = <ore:wiremillAll>;
oreWiremill.add(<meta_tile_entity:wiremill.lv>); // LV
oreWiremill.add(<meta_tile_entity:wiremill.mv>); // MV
oreWiremill.add(<meta_tile_entity:wiremill.hv>); // HV
oreWiremill.add(<meta_tile_entity:wiremill.ev>); // HV+1

//Canner (for FTBQ)
var oreCanner = <ore:cannerAll>;
oreCanner.add(<meta_tile_entity:canner.lv>); // LV
oreCanner.add(<meta_tile_entity:canner.mv>); // MV
oreCanner.add(<meta_tile_entity:canner.hv>); // HV
oreCanner.add(<meta_tile_entity:canner.ev>); // HV+1

//Mixer (for FTBQ)
var oreMixer = <ore:mixerAll>;
oreMixer.add(<meta_tile_entity:mixer.lv>); // LV
oreMixer.add(<meta_tile_entity:mixer.mv>); // MV
oreMixer.add(<meta_tile_entity:mixer.hv>); // HV
oreMixer.add(<meta_tile_entity:mixer.ev>); // HV+1

//FluidSolidifier (for FTBQ)
var oreFluidSolidifier = <ore:fluid_solidifierAll>;
oreFluidSolidifier.add(<meta_tile_entity:fluid_solidifier.lv>); // LV
oreFluidSolidifier.add(<meta_tile_entity:fluid_solidifier.mv>); // MV
oreFluidSolidifier.add(<meta_tile_entity:fluid_solidifier.hv>); // HV
oreFluidSolidifier.add(<meta_tile_entity:fluid_solidifier.ev>); // HV+1

//ChemicalReactor (for FTBQ)
var oreChemicalReactor = <ore:chemical_reactorAll>;
oreChemicalReactor.add(<meta_tile_entity:chemical_reactor.lv>); // LV
oreChemicalReactor.add(<meta_tile_entity:chemical_reactor.mv>); // MV
oreChemicalReactor.add(<meta_tile_entity:chemical_reactor.hv>); // HV
oreChemicalReactor.add(<meta_tile_entity:chemical_reactor.ev>); // HV+1

//OreWasher (for FTBQ)
var oreOreWasher = <ore:washerAll>;
oreOreWasher.add(<meta_tile_entity:ore_washer.lv>); // LV
oreOreWasher.add(<meta_tile_entity:ore_washer.mv>); // MV
oreOreWasher.add(<meta_tile_entity:ore_washer.hv>); // HV
oreOreWasher.add(<meta_tile_entity:ore_washer.ev>); // HV+1

//ChemicalBath (for FTBQ)
var oreChemicalBath = <ore:chemical_bathAll>;
oreChemicalBath.add(<meta_tile_entity:chemical_bath.lv>); // LV
oreChemicalBath.add(<meta_tile_entity:chemical_bath.mv>); // MV
oreChemicalBath.add(<meta_tile_entity:chemical_bath.hv>); // HV
oreChemicalBath.add(<meta_tile_entity:chemical_bath.ev>); // HV+1

//ThermalCentrifuge (for FTBQ)
var oreThermalCentrifuge = <ore:thermal_centrifugeAll>;
oreThermalCentrifuge.add(<meta_tile_entity:thermal_centrifuge.lv>); // LV
oreThermalCentrifuge.add(<meta_tile_entity:thermal_centrifuge.mv>); // MV
oreThermalCentrifuge.add(<meta_tile_entity:thermal_centrifuge.hv>); // HV
oreThermalCentrifuge.add(<meta_tile_entity:thermal_centrifuge.ev>); // HV+1

//OreSifter (for FTBQ)
var oreOreSifter = <ore:sifterAll>;
oreOreSifter.add(<meta_tile_entity:sifter.lv>); // LV
oreOreSifter.add(<meta_tile_entity:sifter.mv>); // MV
oreOreSifter.add(<meta_tile_entity:sifter.hv>); // HV
oreOreSifter.add(<meta_tile_entity:sifter.ev>); // HV+1

//ElectromagneticSeparator (for FTBQ)
var oreElectromagneticSeparator = <ore:electromagnetic_separatorAll>;
oreElectromagneticSeparator.add(<meta_tile_entity:electromagnetic_separator.lv>); // LV
oreElectromagneticSeparator.add(<meta_tile_entity:electromagnetic_separator.mv>); // MV
oreElectromagneticSeparator.add(<meta_tile_entity:electromagnetic_separator.hv>); // HV
oreElectromagneticSeparator.add(<meta_tile_entity:electromagnetic_separator.ev>); // HV+1

//OreAssembler (for FTBQ)
var oreOreAssembler = <ore:assemblerAll>;
oreOreAssembler.add(<meta_tile_entity:assembler.lv>); // LV
oreOreAssembler.add(<meta_tile_entity:assembler.mv>); // MV
oreOreAssembler.add(<meta_tile_entity:assembler.hv>); // HV
oreOreAssembler.add(<meta_tile_entity:assembler.ev>); // HV+1

//SteamExtractor (for FTBQ)
var oreSteamExtractor = <ore:steamExtractorAll>;
oreSteamExtractor.add(<meta_tile_entity:steam_extractor_bronze>); // 
oreSteamExtractor.add(<meta_tile_entity:steam_extractor_steel>); // 

//OreExtractor (for FTBQ)
var oreExtractor = <ore:extractorAll>;
oreExtractor.add(<meta_tile_entity:extractor.lv>); // LV
oreExtractor.add(<meta_tile_entity:extractor.mv>); // MV
oreExtractor.add(<meta_tile_entity:extractor.hv>); // HV
oreExtractor.add(<meta_tile_entity:extractor.ev>); // HV+1
oreExtractor.add(<meta_tile_entity:steam_extractor_bronze>); // 
oreExtractor.add(<meta_tile_entity:steam_extractor_steel>); // 


//LV Battery (for FTBQ)
var oreBatteryLV = <ore:batteryLVAll>;
oreBatteryLV.add(<gregtech:meta_item_1:32519>); // Sodium
oreBatteryLV.add(<gregtech:meta_item_1:32518>); // Lithium
oreBatteryLV.add(<gregtech:meta_item_1:32517>); // Cadmium

//CEF (For FTBQ)
var oreCEF = <ore:cefAll>;
oreCEF.add(<meta_tile_entity:ceu:cef.ulv.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.ulv.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.ulv.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.ulv.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.lv.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.lv.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.lv.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.lv.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.mv.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.mv.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.mv.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.mv.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.hv.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.hv.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.hv.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.hv.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.ev.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.ev.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.ev.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.ev.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.iv.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.iv.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.iv.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.iv.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.luv.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.luv.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.luv.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.luv.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.zpm.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.zpm.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.zpm.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.zpm.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.uv.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.uv.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.uv.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.uv.16>);
oreCEF.add(<meta_tile_entity:ceu:cef.max.1>);
oreCEF.add(<meta_tile_entity:ceu:cef.max.4>);
oreCEF.add(<meta_tile_entity:ceu:cef.max.9>);
oreCEF.add(<meta_tile_entity:ceu:cef.max.16>);

//CEU (For FTBQ)
var oreCEU = <ore:ceuAll>;
oreCEU.add(<meta_tile_entity:ceu:ceu.ulv.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.ulv.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.ulv.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.ulv.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.lv.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.lv.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.lv.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.lv.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.mv.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.mv.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.mv.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.mv.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.hv.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.hv.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.hv.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.hv.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.ev.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.ev.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.ev.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.ev.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.iv.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.iv.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.iv.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.iv.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.luv.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.luv.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.luv.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.luv.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.zpm.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.zpm.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.zpm.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.zpm.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.uv.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.uv.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.uv.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.uv.16>);
oreCEU.add(<meta_tile_entity:ceu:ceu.max.1>);
oreCEU.add(<meta_tile_entity:ceu:ceu.max.4>);
oreCEU.add(<meta_tile_entity:ceu:ceu.max.9>);
oreCEU.add(<meta_tile_entity:ceu:ceu.max.16>);

  

