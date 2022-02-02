Object = require "src/Libs/classic"

--Base class for all on-screen entities.
local BaseEntity = require "src/Entity/BaseEntity"

Ball = BaseEntity.extend().

function Ball.new(x,y)
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

