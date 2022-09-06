function init_lazer()
  lazer={}
end
      --startx,starty,xvel,yvel,life,lifedrate,width,length,color
function add_new_lazer(_x, _y,_lx,_ly,_life,_liferate,_length,_color)
    add(lazer, {
        x=_x,
        y=_y,
        lx=_lx,
        ly=_ly,
        life=_life,
        draw=function(self)
          line(self.x,self.y,self.x,self.y+_length,_color)
          thrust_draw()
        end,
        update=function(self)
          self.x+=self.lx
          self.y+=self.ly
          self.life-=_liferate
            if self.life < 0 then
              del(lazer,self)
            end
        end
    })
end
