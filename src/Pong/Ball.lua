--Base class for all on-screen entities.
local BaseEntity = require "src/Entity/BaseEntity"
local Ball = {}

function Ball:new(x,y)
    setmetatable(self, {__index=BaseEntity:new(x,y)})
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

