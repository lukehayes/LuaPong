--Base class for all on-screen entities.
local BaseEntity = {}
BaseEntity.__index = BaseEntity

function BaseEntity.new(x,y)
    local self = setmetatable({}, BaseEntity)
    self.x = x
    self.y = y
    self.width = 10
    self.height = 10
    self.speed = 50
    self.xDir = 1
    self.yDir = -1
    self.xAngle = 0
    self.yAngle = 0
    self.renderMode = "fill"
    return self
end


function BaseEntity:draw()
    love.graphics.rectangle(
        "fill",
        self.x,
        self.y,
        self.width,
        self.height
    )
end

function BaseEntity:update(dt)

    --Check if ball hits edge of screen
    if self.x > 780 then
        self.xDir = self.xDir - 1
        self.xAngle = love.math.random()
    end

    if self.x < 0 then
        self.xDir = self.xDir + 1
        self.xAngle = love.math.random()
    end

    if self.y > 580 then
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

