
function player_movement()
--apply thrust and friction
  vx*=friction
  px+=vx
  py+=vy

--movement
--0,1,2,3 - l,r,u,d
    if btn(0) then 
      vx -= thrust
      player_spr=3
    end
    if btn(1) then 
      vx += thrust
      player_spr=2
    end
    if btn(2) then
       vy -= thrust
       map1_spd+=.25
       map2_spd+=.15
       map3_spd+=.1
    end
     if btn(3) then
       vy += thrust 
       map1_spd-=.25
       map2_spd-=.15
       map3_spd-=.1
    end
    
-- weapons
    if btn(5) and refire == 0 then 
      --startx,starty,xvel,yvel,life,lifedrate,length,color
      add_new_lazer(px,py,0,-9,5,0.3,5,11)
      add_new_lazer(px+6,py,0,-9,5,0.3,5,11)
      sfx(0)
      refire=refire_max
    end
    
end


function playeroutofbounds(_xmin,_xmax,_ymin,_ymax)
    --check edges
--left
  if px < _xmin then 
    px = _xmin 
    vx = 0
  end
--right
  if px > _xmax then
    px = _xmax 
    vx = 0
--top 
  end
   if py < _ymin then 
    py = _ymin
    vy = 0
--bottom
  end
    if py > _ymax then 
    py = _ymax
    vy = 0
  end
end