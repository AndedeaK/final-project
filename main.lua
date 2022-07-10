-- size of our actual window
WINDOW_WIDTH = 800
WINDOW_HEIGHT = 600

-- Apply gravity
gravity = 1.5

function love.load()
    -- set the title
    love.window.setTitle("bouncy")

    -- These variables will reference the position of the rectangle
    x = 400
    y = 200 

end

function love.update()
    -- This makes sure that gravity is effecting y's position at all times
    y = y + gravity

    -- This configues the movement of rectangle
    if love.keyboard.isDown("d") then
        x = x + 5
    end
    if love.keyboard.isDown("a") then
        x = x - 5
    end
    if love.keyboard.isDown("w") then
        y = y - 5
    end
    if love.keyboard.isDown("s") then
        y = y + 5
    end    

    -- Here we will make sure that the rectangle cannot leave the screen
    if x < 0 then
        x = 0
    end   
    if x >= WINDOW_WIDTH - 100 then
        x = WINDOW_WIDTH - 100
    end
    if y >= WINDOW_HEIGHT - 50 then
        y = WINDOW_HEIGHT - 50
    end
    if y < 0 then
        y = 0
    end 

end

function love.draw()
    love.graphics.setColor(177/255, 97/255, 138/255, 0.49)    
    love.graphics.rectangle("fill", x, y, 100, 50)        -- First width then height
    love.graphics.circle("line", 50, 50, 20)    
end