function player_config()
  --player x,y pos
  px=63
  py=100
 --velocity
  vx=0
  vy=0
  thrust=.25
  friction=0.95
  dethrust=3.50
 
 --sprites
  player_spr=1
  thrust_spr=16
end

function stars_config()
--starting speed
  map1_y=0
  map2_y=1
  map3_y=0
  map1_spd=3
  map2_spd=2
  map3_spd=1
--min/max
  map1_minspd=4
  map2_minspd=2
  map3_minspd=1
  map1_maxspd=10
  map2_maxspd=4
  map3_maxspd=2
--constants
  map_height=128
end

function weapons_config()
  refire=0
  refire_max=5
end