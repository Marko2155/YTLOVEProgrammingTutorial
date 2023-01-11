--Main File

function love.load()
    icon = love.image.newImageData("icon/ytlogo.png")
    love.window.setIcon(icon)
    love.window.setTitle("YT LOVE Programming Tutorial #1")
    player = {}
    player.speed = 5
    player.sprite = love.graphics.newImage("sprites/player.png")
    player.x = 350
    player.y = 250

end

function love.update()
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed
    end
    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed
    end
    if love.keyboard.isDown("down") then
        player.y = player.y + player.speed
    end
    if love.keyboard.isDown("up") then
        player.y = player.y - player.speed
    end
end

function love.draw()
    love.graphics.draw(player.sprite, player.x, player.y)
end
