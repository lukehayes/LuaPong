--Base class for all on-screen entities.
local BaseEntity = {}

function BaseEntity:new(x,y)
    self.x = x
    self.y = y
    self.width = 10
    self.height = 10
    self.speed = 10
    self.renderMode = "fill"
    print("Consturctor Called")
    return self
end


function BaseEntity:draw()
    print("Base Entity Draw() called")
    love.graphics.rectangle(
        self.renderMode,
        self.x,
        self.y,
        self.width,
        self.height
    )
end

return BaseEntity

