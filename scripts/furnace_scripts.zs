val metals = [
    "Iron",
    "Platinum",
    "Iridium",
    "Tin",
    "Lead",
    "Magnesium",
    "Manganese",
    "Silver"
] as string[];

// Loop on every metal string
for metal in metals {

  // Make the ingot oredict lookup name
  var oreIngotName = "ingot" + metal;
  
  // Test if the string exists in the oredict
  if (oreDict has oreIngotName) {
  
    // Make the dust oredict lookup name
    var oreDustName = "dust" + metal;
    
    // Test if the dust exists in the oredict
    if (oreDict has oreDustName)
    {
      // Get the (arbitrary) first instance of an ingot from the oredict
      var ingotItem = oreDict[oreIngotName].firstItem;
      
      // Remove and add a dust -> ingot furnace recipe
      furnace.remove(ingotItem);
      furnace.addRecipe(ingotItem, oreDict[oreDustName]);
    }
  }
}