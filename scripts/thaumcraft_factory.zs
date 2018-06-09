#loader contenttweaker

import mods.contenttweaker.VanillaFactory;


/* THAUMCRAFT CLUSTERS */
var cluster_metals = ["cobalt", "platinum", "aluminium", "antimony", "beryllium", "cassiterite", "iridium", "lithium", "manganese", "molybdenum", "naquadah", "neodymium", "nickel", "palladium", "thorium", "tungsten", "uranium238"] as string[];
for i, metal in cluster_metals {
  var clusterName =  "cluster_" ~ metal;  
  var cluster = VanillaFactory.createItem(clusterName);
  cluster.maxStackSize = 64;
  cluster.register();
}
