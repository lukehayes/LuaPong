local Ball = require "src/Pong/Ball"

b = Ball.new(10,200)
c = Ball.new(300, 200)
d = Ball.new(300,300)

--print(b,c,d)
--print(b.x,c.x,d.x)


function love.draw()
    b:draw()
    c:draw()
    d:draw()
end

function love.update(delta)
    --b:update(delta)
    --c:update(delta)
    --d:update(delta)
end
