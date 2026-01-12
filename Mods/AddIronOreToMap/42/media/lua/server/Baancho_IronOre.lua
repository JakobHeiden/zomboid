local boulders = {

  --[[ Iron ore IDs --]]
  "crafting_ore_0",
  "crafting_ore_1",
  "crafting_ore_2",
  "crafting_ore_3",
  "crafting_ore_4",
  "crafting_ore_5",
  "crafting_ore_6",
  "crafting_ore_7",
  "crafting_ore_8"

}
for _, v in pairs(boulders) do
  table.insert(worldgen.features.ORE["boulders"].main, v)
end
