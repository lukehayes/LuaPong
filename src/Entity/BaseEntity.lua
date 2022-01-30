--Base class for all on-screen entities.
local BaseEntity = {}

function BaseEntity:new(x,y)
    self.x = x
    self.y = y
    self.width = 10
    self.height = 10
    self.renderMode = "fill"
    return self
end

return BaseEntity

