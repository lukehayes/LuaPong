---
--  @module Util

---
--  @type Timer
local Object = require "src/Libs/classic"
Timer = Object.extend()

function Timer:new(time, repeats)
    self.time = time or 1
    self.repeats = repeats or false
end

function Timer:update(dt)
    local timeLeft = 0
    timeLeft = timeLeft + dt

    if timeLeft == self.time then
        print("Time!")
    end
end
