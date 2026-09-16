local p, v, m=0,150,0
function love.update(dt)
if p>500 and m==0 then m=1 love.window.showMessageBox("!!!!", "YOU WERENT SUPPOSED TO BE HERE") end
end
function love.draw()
love.graphics.clear(p>500 and 0 or .2, .5, .8)
love.graphics.rectangle("fill", 400,300,50,50)
end
