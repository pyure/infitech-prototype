import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//Ingot Unification

<ore:ingotAluminium>.add(<thermalfoundation:material:132>);
<ore:ingotAluminium>.add(<libvulpes:productingot:9>);

//Dust Unification

<ore:dustAluminium>.add(<thermalfoundation:material:68>);
<ore:dustAluminium>.add(<libvulpes:productdust:9>);

//Ingot Unification

<ore:nuggetAluminium>.add(<thermalfoundation:material:196>);
<ore:nuggetAluminium>.add(<libvulpes:productnugget:9>);

// Aluminium vs Aluminum
<ore:ingotAluminium>.addAll(<ore:ingotAluminum>);
<ore:oreAluminium>.addAll(<ore:oreAluminum>);
<ore:blockAluminium>.addAll(<ore:blockAluminum>);
<ore:plateAluminium>.addAll(<ore:plateAluminum>);

<ore:plateAluminum>.addAll(<ore:plateAluminium>); // Allow GT aluminium to function as Aluminum for some recipes

// Plates
<ore:plateLead>.add(<railcraft:plate:4>);


/* ========== Ore Unification ========== */

var meta = [0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13] as int[]; // We do not unify 6, which is Netherrack variant

/*
<gregtech:ore_cooperite_0>
<gregtech:ore_neodymium_0>
<gregtech:ore_yellow_limonite_0>
<gregtech:ore_cinnabar_0>
<gregtech:ore_garnet_yellow_0>
<gregtech:ore_phosphor_0>
<gregtech:ore_uranium_0>
<gregtech:ore_iridium_0>
<gregtech:ore_zinc_0>
<gregtech:ore_tetrahedrite_0>
*/

for i in meta
{
	var ore = <gregtech:ore_cooperite_0>.definition.makeStack(i);
	<ore:oreCooperite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_neodymium_0>.definition.makeStack(i);
	<ore:oreNeodymium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_yellow_limonite_0>.definition.makeStack(i);
	<ore:oreYellowLimonite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_cinnabar_0>.definition.makeStack(i);
	<ore:oreCinnabar>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_garnet_yellow_0>.definition.makeStack(i);
	<ore:oreGarnetYellow>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_phosphor_0>.definition.makeStack(i);
	<ore:orePhosphor>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_uranium_0>.definition.makeStack(i);
	<ore:oreUranium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_iridium_0>.definition.makeStack(i);
	<ore:oreIridium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_zinc_0>.definition.makeStack(i);
	<ore:oreZinc>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_tetrahedrite_0>.definition.makeStack(i);
	<ore:oreTetrahedrite>.add(ore);	
}

/*
<gregtech:ore_garnierite_0>
<gregtech:ore_sulfur_0>
<gregtech:ore_silver_0>
<gregtech:ore_monazite_0>
<gregtech:ore_magnetite_0>
<gregtech:ore_barite_0>
<gregtech:ore_cassiterite_sand_0>
<gregtech:ore_calcite_0>
<gregtech:ore_lazurite_0>
<gregtech:ore_lapis_0>
*/

for i in meta
{
	var ore = <gregtech:ore_garnierite_0>.definition.makeStack(i);
	<ore:oreGarnierite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_sulfur_0>.definition.makeStack(i);
	<ore:oreSulfur>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_silver_0>.definition.makeStack(i);
	<ore:oreSilver>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_monazite_0>.definition.makeStack(i);
	<ore:oreMonazite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_magnetite_0>.definition.makeStack(i);
	<ore:oreMagnetite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_barite_0>.definition.makeStack(i);
	<ore:oreBarite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_cassiterite_sand_0>.definition.makeStack(i);
	<ore:oreSandCassiterite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_calcite_0>.definition.makeStack(i);
	<ore:oreCalcite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_lazurite_0>.definition.makeStack(i);
	<ore:oreLazurite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_lapis_0>.definition.makeStack(i);
	<ore:oreLapis>.add(ore);	
}

/*
<gregtech:ore_vinteum_0>
<gregtech:ore_sphalerite_0>
<gregtech:ore_soapstone_0>
<gregtech:ore_powellite_0>
<gregtech:ore_phosphate_0>
<gregtech:ore_galena_0>
<gregtech:ore_pyrolusite_0>
<gregtech:ore_diamond_0>
<gregtech:ore_chalcopyrite_0>
<gregtech:ore_pentlandite_0>
*/

for i in meta
{
	var ore = <gregtech:ore_vinteum_0>.definition.makeStack(i);
	<ore:oreVinteum>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_sphalerite_0>.definition.makeStack(i);
	<ore:oreSphalerite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_soapstone_0>.definition.makeStack(i);
	<ore:oreSoapstone>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_powellite_0>.definition.makeStack(i);
	<ore:orePowellite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_phosphate_0>.definition.makeStack(i);
	<ore:orePhosphate>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_galena_0>.definition.makeStack(i);
	<ore:oreGalena>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_pyrolusite_0>.definition.makeStack(i);
	<ore:orePyrolusite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_diamond_0>.definition.makeStack(i);
	<ore:oreDiamond>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_chalcopyrite_0>.definition.makeStack(i);
	<ore:oreChalcopyrite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_pentlandite_0>.definition.makeStack(i);
	<ore:orePentlandite>.add(ore);	
}

/*
<gregtech:ore_glauconite_0>
<gregtech:ore_quartzite_0>
<gregtech:ore_osmium_0>
<gregtech:ore_chromite_0>
<gregtech:ore_tin_0>
<gregtech:ore_tantalite_0>
<gregtech:ore_uraninite_0>
<gregtech:ore_bentonite_0>
<gregtech:ore_niobium_0>
<gregtech:ore_iron_0>
*/

for i in meta
{
	var ore = <gregtech:ore_glauconite_0>.definition.makeStack(i);
	<ore:oreGlauconite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_quartzite_0>.definition.makeStack(i);
	<ore:oreQuartzite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_osmium_0>.definition.makeStack(i);
	<ore:oreOsmium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_chromite_0>.definition.makeStack(i);
	<ore:oreChromite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_tin_0>.definition.makeStack(i);
	<ore:oreTin>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_tantalite_0>.definition.makeStack(i);
	<ore:oreTantalite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_uraninite_0>.definition.makeStack(i);
	<ore:oreUraninite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_bentonite_0>.definition.makeStack(i);
	<ore:oreBentonite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_niobium_0>.definition.makeStack(i);
	<ore:oreNiobium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_iron_0>.definition.makeStack(i);
	<ore:oreIron>.add(ore);	
}
/*
<gregtech:ore_apatite_0>
<gregtech:ore_graphite_0>
<gregtech:ore_lepidolite_0>
<gregtech:ore_stibnite_0>
<gregtech:ore_banded_iron_0>
<gregtech:ore_aluminium_0>
<gregtech:ore_opal_0>
<gregtech:ore_vanadium_magnetite_0>
<gregtech:ore_thorium_0>
<gregtech:ore_platinum_0>
*/

for i in meta
{
	var ore = <gregtech:ore_apatite_0>.definition.makeStack(i);
	<ore:oreApatite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_graphite_0>.definition.makeStack(i);
	<ore:oreGraphite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_lepidolite_0>.definition.makeStack(i);
	<ore:oreLepidolite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_stibnite_0>.definition.makeStack(i);
	<ore:oreStibnite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_banded_iron_0>.definition.makeStack(i);
	<ore:oreBandedIron>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_aluminium_0>.definition.makeStack(i);
	<ore:oreAluminium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_opal_0>.definition.makeStack(i);
	<ore:oreOpal>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_vanadium_magnetite_0>.definition.makeStack(i);
	<ore:oreVanadiumMagnetite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_thorium_0>.definition.makeStack(i);
	<ore:oreThorium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_platinum_0>.definition.makeStack(i);
	<ore:orePlatinum>.add(ore);	
}

/*
<gregtech:ore_cobaltite_0>
<gregtech:ore_certus_quartz_0>
<gregtech:ore_bauxite_0>
<gregtech:ore_green_sapphire_0>
<gregtech:ore_lithium_0>
<gregtech:ore_uranium235_0>
<gregtech:ore_nickel_0>
<gregtech:ore_olivine_0>
<gregtech:ore_blue_topaz_0>
<gregtech:ore_almandine_0>
*/

for i in meta
{
	var ore = <gregtech:ore_cobaltite_0>.definition.makeStack(i);
	<ore:oreCobaltite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_certus_quartz_0>.definition.makeStack(i);
	<ore:oreCertusQuartz>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_bauxite_0>.definition.makeStack(i);
	<ore:oreBauxite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_green_sapphire_0>.definition.makeStack(i);
	<ore:oreGreenSapphire>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_lithium_0>.definition.makeStack(i);
	<ore:oreLithium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_uranium235_0>.definition.makeStack(i);
	<ore:oreUranium235>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_nickel_0>.definition.makeStack(i);
	<ore:oreNickel>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_olivine_0>.definition.makeStack(i);
	<ore:oreOlivine>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_blue_topaz_0>.definition.makeStack(i);
	<ore:oreBlueTopaz>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_almandine_0>.definition.makeStack(i);
	<ore:oreAlmandine>.add(ore);	
}

/*
<gregtech:ore_salt_0>
<gregtech:ore_grossular_0>
<gregtech:ore_rock_salt_0>
<gregtech:ore_lignite_0>
<gregtech:ore_sodalite_0>
<gregtech:ore_coal_0>
<gregtech:ore_nether_quartz_0>
<gregtech:ore_jasper_0>
<gregtech:ore_talc_0>
<gregtech:ore_tanzanite_0>
*/

for i in meta
{
	var ore = <gregtech:ore_salt_0>.definition.makeStack(i);
	<ore:oreSalt>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_grossular_0>.definition.makeStack(i);
	<ore:oreGrossular>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_rock_salt_0>.definition.makeStack(i);
	<ore:oreRockSalt>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_lignite_0>.definition.makeStack(i);
	<ore:oreLignite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_sodalite_0>.definition.makeStack(i);
	<ore:oreSodalite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_coal_0>.definition.makeStack(i);
	<ore:oreCoal>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_nether_quartz_0>.definition.makeStack(i);
	<ore:oreNetherQuartz>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_jasper_0>.definition.makeStack(i);
	<ore:oreJasper>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_talc_0>.definition.makeStack(i);
	<ore:oreTalc>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_tanzanite_0>.definition.makeStack(i);
	<ore:oreTanzanite>.add(ore);	
}

/*
<gregtech:ore_wulfenite_0>
<gregtech:ore_amethyst_0>
<gregtech:ore_pyrite_0>
<gregtech:ore_spessartine_0>
<gregtech:ore_bismuth_0>
<gregtech:ore_naquadah_0>
<gregtech:ore_brown_limonite_0>
<gregtech:ore_sapphire_0>
<gregtech:ore_malachite_0>
<gregtech:ore_garnet_red_0>
*/

for i in meta
{
	var ore = <gregtech:ore_wulfenite_0>.definition.makeStack(i);
	<ore:oreWulfenite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_amethyst_0>.definition.makeStack(i);
	<ore:oreAmethyst>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_pyrite_0>.definition.makeStack(i);
	<ore:orePyrite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_spessartine_0>.definition.makeStack(i);
	<ore:oreSpessartine>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_bismuth_0>.definition.makeStack(i);
	<ore:oreBismuth>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_naquadah_0>.definition.makeStack(i);
	<ore:oreNaquadah>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_brown_limonite_0>.definition.makeStack(i);
	<ore:oreBrownLimonite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_sapphire_0>.definition.makeStack(i);
	<ore:oreSapphire>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_malachite_0>.definition.makeStack(i);
	<ore:oreMalachite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_garnet_red_0>.definition.makeStack(i);
	<ore:oreGarnetRed>.add(ore);	
}

/*
<gregtech:ore_naquadah_enriched_0>
<gregtech:ore_lead_0>
<gregtech:ore_gold_0>
<gregtech:ore_beryllium_0>
<gregtech:ore_pitchblende_0>
<gregtech:ore_tungstate_0>
<gregtech:ore_bastnasite_0>
<gregtech:ore_magnesite_0>
<gregtech:ore_pyrope_0>
<gregtech:ore_oilsands_0>
*/

for i in meta
{
	var ore = <gregtech:ore_naquadah_enriched_0>.definition.makeStack(i);
	<ore:oreNaquadahEnriched>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_lead_0>.definition.makeStack(i);
	<ore:oreLead>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_gold_0>.definition.makeStack(i);
	<ore:oreGold>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_beryllium_0>.definition.makeStack(i);
	<ore:oreBeryllium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_pitchblende_0>.definition.makeStack(i);
	<ore:orePitchblend>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_tungstate_0>.definition.makeStack(i);
	<ore:oreTungstate>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_bastnasite_0>.definition.makeStack(i);
	<ore:oreBastnasite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_magnesite_0>.definition.makeStack(i);
	<ore:oreMagnesite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_pyrope_0>.definition.makeStack(i);
	<ore:orePyrope>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_oilsands_0>.definition.makeStack(i);
	<ore:oreOilsands>.add(ore);	
}

/*

<gregtech:ore_topaz_0>
<gregtech:ore_cassiterite_0>
<gregtech:ore_molybdenum_0>
<gregtech:ore_ruby_0>
<gregtech:ore_palladium_0>
<gregtech:ore_molybdenite_0>
<gregtech:ore_redstone_0>
<gregtech:ore_ilmenite_0>
<gregtech:ore_saltpeter_0>
<gregtech:ore_cobalt_0>
*/

for i in meta
{
	var ore = <gregtech:ore_topaz_0>.definition.makeStack(i);
	<ore:oreTopaz>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_cassiterite_0>.definition.makeStack(i);
	<ore:oreCassiterite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_molybdenum_0>.definition.makeStack(i);
	<ore:oreMolybdenum>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_ruby_0>.definition.makeStack(i);
	<ore:oreRuby>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_palladium_0>.definition.makeStack(i);
	<ore:orePalladium>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_molybdenite_0>.definition.makeStack(i);
	<ore:oreMolybdenite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_redstone_0>.definition.makeStack(i);
	<ore:oreRedstone>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_ilmenite_0>.definition.makeStack(i);
	<ore:oreIlmenite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_saltpeter_0>.definition.makeStack(i);
	<ore:oreSaltpeter>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_cobalt_0>.definition.makeStack(i);
	<ore:oreCobalt>.add(ore);	
}

/*
<gregtech:ore_copper_0>
<gregtech:ore_spodumene_0>
<gregtech:ore_scheelite_0>
<gregtech:ore_emerald_0>
<gregtech:ore_borax_0>
<gregtech:ore_tenorite_0>
<gregtech:ore_cuprite_0>
<gregtech:ore_bornite_0>
<gregtech:ore_chalcocite_0>
<gregtech:ore_enargite_0>
*/

for i in meta
{
	var ore = <gregtech:ore_copper_0>.definition.makeStack(i);
	<ore:oreCopper>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_spodumene_0>.definition.makeStack(i);
	<ore:oreSpodumene>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_scheelite_0>.definition.makeStack(i);
	<ore:oreScheelite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_emerald_0>.definition.makeStack(i);
	<ore:oreEmerald>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_borax_0>.definition.makeStack(i);
	<ore:oreBorax>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_tenorite_0>.definition.makeStack(i);
	<ore:oreTenorite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_cuprite_0>.definition.makeStack(i);
	<ore:oreCuprite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_bornite_0>.definition.makeStack(i);
	<ore:oreBornite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_chalcocite_0>.definition.makeStack(i);
	<ore:oreChalcocite>.add(ore);	
}

for i in meta
{
	var ore = <gregtech:ore_enargite_0>.definition.makeStack(i);
	<ore:oreEnargite>.add(ore);	
}

/*
<gregtech:ore_tennantite_0>
*/

for i in meta
{
	var ore = <gregtech:ore_tennantite_0>.definition.makeStack(i);
	<ore:oreTennantite>.add(ore);	
}

/*
<gregtech:ore_rutile_0>
*/

for i in meta
{
	var ore = <gregtech:ore_rutile_0>.definition.makeStack(i);
	<ore:oreRutile>.add(ore);	
}

/* Special oredicts for chisel-able blocks */
for i in <ore:blockCopper>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniCopper>.add(i);
  }
}

for i in <ore:blockTin>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniTin>.add(i);
  }
}

for i in <ore:blockBronze>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniBronze>.add(i);
  }
}

for i in <ore:blockLead>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniLead>.add(i);
  }
}

for i in <ore:blockSilver>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniSilver>.add(i);
  }
}

for i in <ore:blockAluminium>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniAluminium>.add(i);
  }
}

for i in <ore:blockSteel>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniSteel>.add(i);
  }
}

for i in <ore:blockInvar>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniInvar>.add(i);
  }
}

for i in <ore:blockElectrum>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniElectrum>.add(i);
  }
}

for i in <ore:blockNickel>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniNickel>.add(i);
  }
}

for i in <ore:blockPlatinum>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniPlatinum>.add(i);
  }
}

for i in <ore:blockCobalt>.items {
  if (i.definition.owner != "chisel") {
    <ore:blockUniCobalt>.add(i);
  }
}
