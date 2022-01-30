--Base class for all on-screen entities.
local Asset = {}

function Asset:new()
    return self
end

function Asset:exists(file)
    return love.filesystem.getInfo(file)
end

return Asset

