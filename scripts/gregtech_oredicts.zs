/* 
At the time of writing, GT tool oredicts incorporate nbt making them tricky to use in custom recipes.
Attempts to clean the existing oredicts were unsuccessful, so instead we create our own custom oredicts.

*/

// Clean the Crafting Tool Oredicts
for item in <ore:craftingToolSaw>.items{
    <ore:craftingToolSawEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolHardHammer>.items{
    <ore:craftingToolHardHammerEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolScrewdriver>.items{
    <ore:craftingToolScrewdriverEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolWrench>.items{
    <ore:craftingToolWrenchEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolKnife>.items{
    <ore:craftingToolKnifeEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolSoftHammer>.items{
    <ore:craftingToolSoftHammerEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolFile>.items{
    <ore:craftingToolFileEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolScoop>.items{
    <ore:craftingToolScoopEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolMortar>.items{
    <ore:craftingToolMortarEmptyTag>.add(item.withEmptyTag());
}
