
function player_draw()
  -- when not moving set sprite to 0
  player_spr=1
end

function thrust_draw()
  thrust_spr +=1
  if thrust_spr > 19 then thrust_spr=17 end
end