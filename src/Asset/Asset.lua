--- Asset Helper Functions
--  @module Asset
local Object = require "src/Libs/classic"
Asset = Object:extend()

-- STATIC METHODS

--- Check if a file exists.
--  @param file    The name of the file to check existance of.
--  @return        Full path to image file.
function Asset.exists(file)
    return love.filesystem.getInfo(file)
end

--- Get the assets directory string.
--  @return    A string for the assets folder ending in forward slash.
function Asset.assetsDir()
    return "assets/"
end

--- Get a file from the images directory. ".png" added to end.
--  @param file    The name of the image file to get.
--  @return        Full path to sound file.
function Asset.image(file)
    return "assets/images/" .. file .. ".png"
end

--- Get a file from the sounds directory. ".mp3" added to end.
--  @param file    The name of the sound file to get.
--  @return        Full path to sound file.
function Asset.sound(file)
    return "assets/sounds/" .. file .. ".mp3"
end

return Asset

