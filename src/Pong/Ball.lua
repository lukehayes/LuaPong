--- 
--  @module Entity

--- 
--  @type BaseEntity
local BaseEntity = require "src/Entity/BaseEntity"
Ball = BaseEntity:extend()

--- Ball Constructor.
--  @param x    The X position.
--  @param y    The Y position.
function Ball:new(x,y)
    Ball.super.new(self,x,y)
end

--- Draw the ball.
function Ball:draw()
    love.graphics.rectangle(
        self.renderMode,
        self.x,
        self.y,
        self.width,
        self.height
    )
end

return Ball

