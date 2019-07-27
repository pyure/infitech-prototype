import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.entity.IEntityEquipmentSlot;

var blockDragonstone = <botania:storage:4>;
var blockManadiamond = <botania:storage:3>;
var blockElementium = <botania:storage:2>;
var blockTerrasteel = <botania:storage:1>;
var blockManasteel = <botania:storage>;

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(blockDragonstone);
recipes.remove(blockManadiamond);
recipes.remove(blockElementium);
recipes.remove(blockTerrasteel);
recipes.remove(blockManasteel);
recipes.remove(<botania:quartztypedark>);
recipes.remove(<botania:quartztypemana>);
recipes.remove(<botania:quartztypeblaze>);
recipes.remove(<botania:quartztypelavender>);
recipes.remove(<botania:quartztypered>);
recipes.remove(<botania:quartztypeelf>);
recipes.remove(<botania:quartztypesunny>);

compressor.recipeBuilder()
	.inputs(<ore:elvenDragonstone> * 9)
	.outputs(blockDragonstone)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:manaDiamond> * 9)
	.outputs(blockManadiamond)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotElvenElementium> * 9)
	.outputs(blockElementium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotTerrasteel> * 9)
	.outputs(blockTerrasteel)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotManasteel> * 9)
	.outputs(blockManasteel)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzDark> * 4)
	.outputs(<botania:quartztypedark>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzMana> * 4)
	.outputs(<botania:quartztypemana>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzBlaze> * 4)
	.outputs(<botania:quartztypeblaze>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzLavender> * 4)
	.outputs(<botania:quartztypelavender>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzRed> * 4)
	.outputs(<botania:quartztypered>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzElven> * 4)
	.outputs(<botania:quartztypeelf>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzSunny> * 4)
	.outputs(<botania:quartztypesunny>)
	.duration(400).EUt(2)
	.buildAndRegister();

// Change ring of the mantle recipe
var ringMantle = <botania:miningring>;

recipes.remove(ringMantle);
recipes.addShaped("it3_ringMantle", ringMantle, [
  [<ore:runeEarthB>, <ore:ingotManasteel>, <ore:toolHeadPickaxeDiamond>], 
  [<ore:ingotManasteel>, null, <ore:ingotManasteel>], 
  [null, <ore:ingotManasteel>, null]]);

// Remove Botania Blazeblock recipes since you can get an infinite resource loop.  We could probably un-remove one of the two recipesByName below safely.  
recipes.removeByRecipeName("botania:blazeblock");
recipes.removeByRecipeName("gregtech:block_compress_blaze");
recipes.remove(<minecraft:blaze_rod> * 9);

// Make terra shatterer require stainless steel
recipes.removeByRecipeName("botania:terrapick");
recipes.addShaped("it3_botania_terrapick_tierD", <botania:terrapick>.withTag({tier: 2}).withLore(["§7Supports up to §bB§7 rank§r"]), [
  [<ore:ingotTerrasteel>, <botania:manatablet>, <ore:ingotTerrasteel>], 
  [<ore:ingotTerrasteel>, <ore:stickStainlessSteel>, <ore:ingotTerrasteel>], 
  [null, <ore:stickStainlessSteel>, null]]);

// Defile the terra shatterer via obscene teiring that would be an offense to Vazkii
// recipes.addShapeless("it3_botania_terrapick_tierC", <botania:terrapick>.withLore(["§7Supports up to §eC§7 rank§r"]), 
//   [<botania:terrapick>.withTag({display:{Lore:["§7Supports up to §cD§7 rank§r"]}}).marked("pick"), <minecraft:stone:0>],
//   function (out, ins, cInfo) {
//     if (!(ins.pick.tag has "tier") || ins.pick.tag.tier == 0) {
//       return ins.pick.updateTag({tier: 1}).withLore(["§7Supports up to §eC§7 rank§r"]);
//     } else {
//       return null;
//     }
//   }, null);

// recipes.addShapeless("it3_botania_terrapick_tierB", <botania:terrapick>.withLore(["§7Supports up to §bB§7 rank§r"]), 
//   [<botania:terrapick>.withTag({display:{Lore:["§7Supports up to §cC§7 rank§r"]}}).marked("pick"), <minecraft:stone:1>],
//   function (out, ins, cInfo) {
//     if (!(ins.pick.tag has "tier") || ins.pick.tag.tier == 1) {
//       return ins.pick.updateTag({tier: 2}).withLore(["§7Supports up to §bB§7 rank§r"]);
//     } else {
//       return null;
//     }
//   }, null);

recipes.addShapeless("it3_botania_terrapick_tierA", <botania:terrapick>.withLore(["§7Supports up to §aA§7 rank§r"]), 
  [<botania:terrapick>.marked("pick"), <ore:toolHeadPickaxeTitanium>, <ore:ingotVoid>, <ore:livingwoodTwig>],
  function (out, ins, cInfo) {
    if (!(ins.pick.tag has "tier") || ins.pick.tag.tier == 2) {
      return ins.pick.updateTag({tier: 3}).withLore(["§7Supports up to §aA§7 rank§r"]);
    } else {
      return null;
    }
  }, null);

recipes.addShapeless("it3_botania_terrapick_tierS", <botania:terrapick>.withLore(["§7Supports up to §dS§7 rank§r"]), 
  [<botania:terrapick>.onlyWithTag({tier: 3}).marked("pick"), <ore:toolHeadPickaxeOsmiridium>, <ore:eternalLifeEssence>, <ore:dreamwoodTwig>],
  function (out, ins, cInfo) {
    return ins.pick.updateTag({tier: 4}).withLore(["§7Supports up to §dS§7 rank§r"]);
  }, null);

recipes.addShapeless("it3_botania_terrapick_tierSS", <botania:terrapick>.withLore(["§7Supports up to §6SS§7 rank§r"]), 
  [<botania:terrapick>.onlyWithTag({tier: 4}).marked("pick"), <ore:toolHeadPickaxeNaquadahAlloy>, <ore:gaiaIngot>, <ore:dreamwoodTwig>],
  function (out, ins, cInfo) {
    return ins.pick.updateTag({tier: 5}).withLore(["§7Supports up to §6SS§7 rank§r"]);
  }, null);

events.onBlockBreak(function(event as crafttweaker.event.BlockBreakEvent) {
  if (event.isPlayer) {
    if (!isNull(event.player.currentItem)) {
      if (event.player.currentItem.withEmptyTag().matches(<botania:terrapick>.withEmptyTag())) {
        var pick = event.player.currentItem;
        if (pick.tag has "tier") {
          var tier = pick.tag.tier.asInt();
          var maxMana = [9999, 999999, 9999999, 99999999, 999999999, 2147483647] as int[];
          if (pick.tag.mana > maxMana[tier]) {
            event.cancel();
            event.player.sendChat("Your pickaxe shakes in your hand as you feel mana rush out of it.");
            event.player.sendChat("It appears that it contained more mana than it could handle, maybe try reinforcing it?");
            event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), pick.updateTag({mana: maxMana[tier]}));
          }
        } else {
          event.cancel();
          event.player.sendChat("Untiered pickaxe detected. Automatically tiering.");
          event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), pick.updateTag({tier: 2}).withLore(["§7Supports up to §bB§7 rank§r"]));
        }
      }
    }
  }
});


// Charged Certus Quartz Alchemy
var charged_quartz = <appliedenergistics2:material:1>;
mods.botania.ManaInfusion.addAlchemy(charged_quartz, <ore:crystalCertusQuartz>, 900);

// 
var manasteel_pickaxe = <botania:manasteelpick>;
recipes.remove(manasteel_pickaxe);

recipes.addShaped("it3_botania_manasteel_pickaxe", manasteel_pickaxe, [
  [<ore:ingotManasteel>, <ore:ingotAluminium>, <ore:ingotManasteel>], 
  [null, <ore:livingwoodTwig>, null], 
  [null, <ore:livingwoodTwig>, null]]);

  
// Remove coal duplication
mods.botania.ManaInfusion.removeRecipe(<minecraft:coal> * 2); 

// Allow conversion of certus quartz -> prismarine
mods.botania.ManaInfusion.addAlchemy(<minecraft:prismarine_shard>, <ore:gemCertusQuartz>, 4000);

// Recipe for Combat Maid Headgear, suggested by Furian
var combatMaidHeadGear = <extrabotany:combatmaidhelm>;
var shadowWarriorHelmet = <extrabotany:shadowwarriorhelm>.withTag({isnight: 0 as byte});
var starryHeadGear = <extrabotany:cosmeticmaidhelm>;
  
recipes.remove(combatMaidHeadGear);
recipes.addShaped("it3_extrabotany_recipe_cmhelm", <extrabotany:combatmaidhelm>.withTag({}), [
  [<ore:gaiaIngot>, <ore:gaiaIngot>, <ore:gaiaIngot>], 
  [<ore:goldweave>, <botania:terrasteelhelm>, <ore:goldweave>], 
  [shadowWarriorHelmet, <ore:circuitAdvanced>, starryHeadGear]]);

// Gaia Pylon
var gaiaPylon = <botania:pylon:2>;
recipes.remove(gaiaPylon);
recipes.addShaped("it3_botania_gaia_pylon", gaiaPylon, [
  [<ore:plateStainlessSteel>, <ore:elvenPixieDust>, <ore:plateStainlessSteel>], 
  [<ore:ingotElvenElementium>, <botania:pylon>, <ore:ingotElvenElementium>], 
  [<ore:stickStainlessSteel>, <ore:elvenPixieDust>, <ore:stickStainlessSteel>]]);
  
// Botania Manasteel
var manasteel = <botania:manaresource>;
mods.botania.ManaInfusion.removeRecipe(manasteel);
mods.botania.ManaInfusion.addInfusion(manasteel, <ore:ingotSteel>, 3000);
mods.botania.ManaInfusion.addInfusion(manasteel, <ore:ingotCompressedWroughtIron>, 3000);
