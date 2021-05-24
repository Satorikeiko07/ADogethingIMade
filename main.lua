function love.load()
    doge = love.graphics.newImage("assets/dogepic.png")
    x = 100
    y = 100
    speed = 400
    
    backround = love.graphics.newImage("assets/backround.png")

    source = love.audio.newSource("assets/music.wav", "stream")
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        x = x + (speed * dt)
    end
    if love.keyboard.isDown("left") then
        x = x - (speed * dt)
    end
    if love.keyboard.isDown("down") then
        y = y + (speed * dt)
    end
    if love.keyboard.isDown("up") then
        y = y - (speed * dt)
    end

    if not source:isPlaying() then
        love.audio.play(source)
    end
end

function love.keypressed(key)
    if key == "tab" then
       local state = not love.mouse.isVisible()
       love.mouse.setVisible(state)
    end
 end

function love.draw()
    love.graphics.draw(backround, 0, 0)
    love.graphics.draw(doge, x, y)
    love.graphics.print("press Tab to hide cursor", 5, 11)
    love.graphics.print("use the arrow keys", 5, 23)
    love.graphics.print("to move", 5 , 34)
end