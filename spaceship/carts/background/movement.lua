function star_movement()
  
  -- move the map
  map1_y+=map1_spd
  map2_y+=map2_spd
  map3_y+=map3_spd
  
  -- loop the map
  if map1_y > 127 then map1_y = 0 end
  if map2_y > 127 then map2_y = 0 end
  if map3_y > 127 then map3_y = 0 end

  if map1_y < 0 then map1_y = 127 end
  if map2_y < 0 then map2_y = 127 end
  if map3_y < 0 then map3_y = 127 end
  


    -- capping the amount of movement
  if map1_spd > map1_maxspd then map1_spd = map1_maxspd  end
  if map2_spd > map2_maxspd then map2_spd = map2_maxspd  end
  if map3_spd > map3_maxspd then map3_spd = map3_maxspd  end

  if map1_spd < map1_minspd then map1_spd = map1_minspd end
  if map2_spd < map2_minspd then map2_spd = map2_minspd end
  if map3_spd < map3_minspd then map3_spd = map3_minspd end

end