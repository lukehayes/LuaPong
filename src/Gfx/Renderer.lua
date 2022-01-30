--Simple renderer to batch drawing - eventually.
BaseEntity = require "src/Entity/BaseEntity"

local Renderer = {}

function Renderer:new()
    self.entities = {}
    self.size = 0

    return self
end

function Renderer:add(entity)
    assert(entity, "ENTITY WAS NIL")
    table.insert(self.entities, entity)
    self.size = self.size + 1
    --print(self.size)
end

function Renderer:draw()
    for _,v in pairs(self.entities) do
        v:draw()
    end
end

return Renderer
