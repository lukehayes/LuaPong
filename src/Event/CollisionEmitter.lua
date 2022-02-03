---
--  @module Event

---
--  @type CollisionEmitter
local Object = require "src/Libs/classic"
local PublisherInterface = require "src/Event/PublisherInterface"
CollisionEmitter = Object:extend()
CollisionEmitter:implement(PublisherInterface)

function CollisionEmitter:new()
    self.subscribers = {}
end

function CollisionEmitter:addSubscriber(subscriber)
    subscriber:update()
    table.insert(self.subscribers, subscriber)
end

function CollisionEmitter:notify()
    print("Notifying")
    for _,subscriber in pairs(self.subscribers) do
        subscriber:update()
    end
end

function CollisionEmitter:onCollision()
    self:notify()
end

return CollisionEmitter
