---
--  @module Event

---
--  @type SubscriberInterface
local Object = require "src/Libs/classic"
SubscriberInterface = Object:extend()

function SubscriberInterface:update() end

return SubscriberInterface
