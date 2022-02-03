local Ball = require "src/Pong/Ball"

function love:load()
    b = Ball(400,400)
end

function love.draw()
    b:draw()
end

function love.update(dt)
    b:update(dt)
end
