---
--  @module Event

---
--  @type PublisherInterface
local Object = require "src/Libs/classic"
PublisherInterface = Object:extend()

function PublisherInterface:addSubscriber()
end

function PublisherInterface:notify()
    print(self)
end

function PublisherInterface:__tostring()
    return "Publisher Interface"
end

return PublisherInterface
