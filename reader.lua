local reader = peripheral.wrap("back")
local readerData = reader.getBlockData()
local specData = readerData["particle"]

for k, v in pairs(specData) do
    print(k, v)
end

print("Specific Data")
print(readerData["linkedMagneticFields"][1])
