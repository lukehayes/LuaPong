--Base class for all on-screen entities.
local BaseEntity = require "src/Entity/BaseEntity"
Ball = {}
Ball.__index = Ball

function Ball.new(x,y)
    local self = setmetatable({}, BaseEntity)
    return self
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

