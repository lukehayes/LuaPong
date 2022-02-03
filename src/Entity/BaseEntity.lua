---
--  @module Entity

---
--  @type BaseEntity
local Object = require "src/Libs/classic"
BaseEntity = Object:extend()

--- BaseEntity Constructor.
--  @param x    The X position.
--  @param y    The Y position.
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
    self.collided = false
    self.renderMode = "fill"
end

--- Draw the entity.
function BaseEntity:draw()
    love.graphics.rectangle(
        self.renderMode,
        self.x,
        self.y,
        self.width,
        self.height
    )
end

--- Draw the entity.
--  @param dt    Delta time
function BaseEntity:update(dt)

    self.collided = false

    --Check if ball hits edge of screen
    if self.x > 790 then
        self.xDir = self.xDir - 1
        self.xAngle = love.math.random()
        self.collided = true
    end

    if self.x < 0 then
        self.xDir = self.xDir + 1
        self.xAngle = love.math.random()
        self.collided = true
    end

    if self.y > 590 then
        self.yDir = self.yDir - 1
        self.yAngle = love.math.random()
        self.collided = true
    end

    if self.y < 0 then
        self.yDir = self.yDir + 1
        self.yAngle = love.math.random()
        self.collided = true
    end


    self.x = self.x + self.xDir * self.speed * dt
    self.y = self.y + self.yDir * self.speed * dt
end

return BaseEntity

