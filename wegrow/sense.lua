-- soil.lua -- soil moisture sensor
soil={}
function soil.run()
  print("soil.run...")             -- DEBUG
  w.store("soil", 345345)
  return nil
end
return soil