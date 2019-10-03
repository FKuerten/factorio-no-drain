function removeDrain(typeName)
  for _,entity in pairs(data.raw[typeName]) do
    local energySource =  entity.energy_source
    if energySource and energySource.type == 'electric' then
      energySource.drain = "0W"
    end
  end
end

removeDrain('inserter')
removeDrain('assembling-machine')
removeDrain('furnace')
