--
function _init()
  player_config()
  stars_config()
  weapons_config()
  init_lazer()
end

--Step Event
function _update()
  --player
  player_draw()
  thrust_draw()
  player_movement()
  outofbounds()
 
 --weaponcount
 refire-=1
 if refire < 0 then refire=0 end

  --background
  star_movement()

  --lazer update
 for l in all(lazer) do
    l:update()
  end
end

--Draw Event
function _draw()
  cls()
   print(map1_spd*1000)
  --  print(map2_spd)
  --  print(map3_spd)

  spr(player_spr,px,py)
  spr(thrust_spr,px,py+8)

  for l in all(lazer) do
      l:draw()
  end

    
    draw_stars()

end