--Base class for all on-screen entities.
local BaseEntity = {}

function BaseEntity:new(x,y)
    self.x = x
    self.y = y
    self.width = 10
    self.height = 10
    self.speed = 5
    self.xDir = 1
    self.yDir = -1
    self.renderMode = "fill"
    return self
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
    if self.x > 780 then
        self.xDir = self.xDir - 1
    end

    if self.x < 0 then
        self.xDir = self.xDir + 1
    end

    if self.y > 580 then
        self.xDir = self.xDir - 1
    end

    if self.y < 0 then
        self.yDir = self.yDir + 1
    end

    self.x = self.x + self.xDir * self.speed
    self.y = self.y + self.xDir * self.speed
end

return BaseEntity

