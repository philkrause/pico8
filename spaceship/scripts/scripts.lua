function outofbounds(_px,_py,_vx,_vy)
    --check edges
--left
  if _px < 0 then 
    _px = 0 
    _vx = 0
  end
--right
  if _px > 120 then
    _px = 120 
    _vx = 0
  end
 --top 
  if _py < 60 then 
    _py = 60
    _vy = 0
  end
--bottom
  if _py > 110 then 
    _py = 110
    _vy = 0
  end
end