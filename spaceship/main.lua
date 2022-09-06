--
function _init()
  player_config()
  stars_config()
  weapons_config()
  enemy_config()
  init_lazer()
  init_enemy()
    if #enemy < enemymax then
  --enemy
  --sprite,xpos,ypos,xvel,yvel
  add_new_enemy(6,ex,ey)
  end
end

--Step Events
function _update()
  --player
  player_draw()
  thrust_draw()
  player_movement()
  playeroutofbounds(xmin,xmax,ymin,ymax)

 --weaponcount
 refire-=1
 if refire < 0 then refire=0 end

  --background
  star_movement()

  --lazer update
  for l in all(lazer) do
    l:update()
  end

    for e in all(enemy) do
       distance, angle, direction = e:follow(px,py)
      --e:inbounds(evx, evy) 
  end

      ex -=cos(angle) --player x
      ey -=sin(angle) --player y
end

--Draw Event
function _draw()
  cls()  
  spr(player_spr,px,py)
  spr(thrust_spr,px,py+8)
  print(cos(angle))

  for l in all(lazer) do
    l:draw()
  end

  for e in all(enemy) do
    e:draw(ex, ey, px, py)
    --print(angle)
  end


    draw_stars()
end