function init_enemy()
  enemy={}
end
      --sprite,xpos,ypos,xvel,yvel
function add_new_enemy(_spr,_x, _y)
    add(enemy, {
        --location
        x=_x,
        y=_y,
        draw=function(self, _ex, _ey, _px, _py)
          self.x =_ex
          self.y =_ey
          spr(_spr,self.x, self.y)
          spr(thrust_spr,self.x,self.y+8)
          line(self.x+3,self.y,_px+3,_py,8)
        end,
        inbounds=function(self, _evx, _evy)
          self.x+=_evx
          self.y+=_evy
           if self.x -_evx < 0 then 
              self.x = 0 
              self.vx = 0
           end
          --right
           if self.x > 120 then
              self.x = 120 
              self.vx = 0
           --to 
           end
           if self.y < 10 then 
              self.y = 10
              self.vy = 0
           --bottom
           end
           if self.y > 120 then 
              self.y = 120
              self.vy = 0
           end
        end,
        follow=function(self, _px, _py)
          local adjacent=(self.x - _px)^2  --a^2
          local opposite=(self.y - _py)^2 --b^2
          local distance=sqrt(adjacent+opposite) --hypotenuse
          local angle=atan2(self.x - _px, self.y - _py)
          local direction=flr(angle * 8)
          return distance, angle, direction
        end
    })
end
