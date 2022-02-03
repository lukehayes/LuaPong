---
--  @module Event

---
--  @type CollisonSubscriber
local Object = require "src/Libs/classic"
local SubscriberInterface = require "src/Event/SubscriberInterface"
CollisionSubscriber = Object:extend()
--CollisonSubscriber:implement(SubscriberInterface)

function CollisionSubscriber:new()
    print("Collison Subscriber Created")
end

function CollisionSubscriber:update()
    print("Reacting to a collision!!!")
end

function CollisionSubscriber:__tostring()
    return "Collision Subscriber"
end

return CollisionSubscriber


