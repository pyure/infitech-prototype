
val beeNames = [
  "Aluminum",
        "Osmium",
        "Aluminium",
        "Auric",
        "Iron",
        "Gold",
        "Copper",
        "Tin",
        "Silver",
        "Lead",
        "Cobalt",
        "Diamond",
        "Emerald",
        "Certus",
        "Fluix",
        "Silicon",
        "Platinum"
] as string[];

for name in beeNames {
  var speciesName = "magicbees.species" ~ name;
  var drone = <forestry:bee_drone_ge>.withTag({Genome: {Chromosomes: [{UID1: speciesName, UID0: speciesName,Slot: 0 as byte	}]}});
  var princess = <forestry:bee_princess_ge>.withTag({Genome: {Chromosomes: [{UID1: speciesName, UID0: speciesName,Slot: 0 as byte	}]}});
  var queen = <forestry:bee_queen_ge>.withTag({Genome: {Chromosomes: [{UID1: speciesName, UID0: speciesName,Slot: 0 as byte	}]}});
  var larvae = <forestry:bee_larvae_ge>.withTag({Genome: {Chromosomes: [{UID1: speciesName, UID0: speciesName,Slot: 0 as byte	}]}});
  mods.jei.JEI.hide(drone);
  mods.jei.JEI.hide(princess);
  mods.jei.JEI.hide(queen);
  mods.jei.JEI.hide(larvae);
}



