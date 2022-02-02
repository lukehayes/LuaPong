local Object = require "src/Libs/classic"
local BaseEntity = require "src/Entity/BaseEntity"

local Ball = BaseEntity:extend()

function Ball:new(x,y)
    Ball.super.new(self,x,y)
end

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

