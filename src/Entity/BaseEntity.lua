Object = require "src/Libs/classic"

--Base class for all on-screen entities.
BaseEntity = Object:extend()

function BaseEntity:new(x,y)
    self.x = x or 0
    self.y = y or 0
    self.width = 10
    self.height = 10
    self.speed = 150
    self.xDir = 1
    self.yDir = -1
    self.xAngle = 0
    self.yAngle = 0
    self.renderMode = "fill"
end


function BaseEntity:draw()
    love.graphics.rectangle(
        self.renderMode,
        self.x,
        self.y,
        self.width,
        self.height
    )
end

function BaseEntity:update(dt)

    --Check if ball hits edge of screen
    if self.x > 790 then
        self.xDir = self.xDir - 1
        self.xAngle = love.math.random()
    end

    if self.x < 0 then
        self.xDir = self.xDir + 1
        self.xAngle = love.math.random()
    end

    if self.y > 590 then
        self.yDir = self.yDir - 1
        self.yAngle = love.math.random()
    end

    if self.y < 0 then
        self.yDir = self.yDir + 1
        self.yAngle = love.math.random()
    end

    self.x = self.x + self.xDir * self.speed * dt
    self.y = self.y + self.yDir * self.speed * dt
end

return BaseEntity

