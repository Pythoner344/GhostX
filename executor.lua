local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))

-- Создаём кнопку "G"
local button = Instance.new("TextButton", gui)
button.Size = UDim2.new(0, 50, 0, 50)
button.Position = UDim2.new(0.9, 0, 0.1, 0)
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.Text = "G"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 20
button.Draggable = true
button.Active = true

-- Округление кнопки "G"
local corner1 = Instance.new("UICorner", button)
corner1.CornerRadius = UDim.new(1, 0)

-- Создаём главное окно
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Visible = false

-- Округление окна
local corner2 = Instance.new("UICorner", frame)
corner2.CornerRadius = UDim.new(0.1, 0)

-- Поле для ввода скрипта
local textBox = Instance.new("TextBox", frame)
textBox.Size = UDim2.new(1, -20, 0.6, 0)
textBox.Position = UDim2.new(0, 10, 0, 10)
textBox.Text = "Спасибо за использование GhostX! <3"
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
textBox.Font = Enum.Font.SourceSans
textBox.TextSize = 16
textBox.ClearTextOnFocus = true
textBox.MultiLine = true

-- Округление поля ввода
local corner3 = Instance.new("UICorner", textBox)
corner3.CornerRadius = UDim.new(0.1, 0)

-- Кнопка "Запустить"
local runButton = Instance.new("TextButton", frame)
runButton.Size = UDim2.new(0.45, -10, 0, 40)
runButton.Position = UDim2.new(0, 10, 0.7, 0)
runButton.Text = "Запустить"
runButton.TextColor3 = Color3.fromRGB(255, 255, 255)
runButton.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
runButton.Font = Enum.Font.SourceSansBold
runButton.TextSize = 20

-- Округление кнопки запуска
local corner4 = Instance.new("UICorner", runButton)
corner4.CornerRadius = UDim.new(0.1, 0)

-- Кнопка "Очистить"
local clearButton = Instance.new("TextButton", frame)
clearButton.Size = UDim2.new(0.45, -10, 0, 40)
clearButton.Position = UDim2.new(0.55, 10, 0.7, 0)
clearButton.Text = "Очистить"
clearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
clearButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
clearButton.Font = Enum.Font.SourceSansBold
clearButton.TextSize = 20

-- Округление кнопки очистки
local corner5 = Instance.new("UICorner", clearButton)
corner5.CornerRadius = UDim.new(0.1, 0)

-- Кнопка "Закрыть" (внизу справа)
local closeButton = Instance.new("TextButton", frame)
closeButton.Size = UDim2.new(0, 40, 0, 40)
closeButton.Position = UDim2.new(1, -50, 1, -50)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20

-- Округление кнопки закрытия
local corner6 = Instance.new("UICorner", closeButton)
corner6.CornerRadius = UDim.new(0.5, 0)

-- Функция открытия окна
button.MouseButton1Click:Connect(function()
    frame.Visible = true
    button.Visible = false
end)

-- Функция закрытия окна
closeButton.MouseButton1Click:Connect(function()
    frame.Visible = false
    button.Visible = true
end)

-- Функция очистки поля ввода
clearButton.MouseButton1Click:Connect(function()
    textBox.Text = ""
end)

-- Функция выполнения скрипта
runButton.MouseButton1Click:Connect(function()
    local scriptText = textBox.Text
    local func, err = loadstring(scriptText)
    
    if func then
        func()
    else
        warn("Ошибка: " .. err)
    end
end)

-- --- Кнопка HHUB в правом верхнем углу ---
local hhubButton = Instance.new("TextButton", gui)
hhubButton.Size = UDim2.new(0, 50, 0, 50)
hhubButton.Position = UDim2.new(1, -60, 0, 10)
hhubButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hhubButton.Text = "HHUB"
hhubButton.TextColor3 = Color3.fromRGB(255, 255, 255)
hhubButton.Font = Enum.Font.SourceSansBold
hhubButton.TextSize = 18
hhubButton.Draggable = true
hhubButton.Active = true

-- Округление кнопки HHUB
local cornerHHUB = Instance.new("UICorner", hhubButton)
cornerHHUB.CornerRadius = UDim.new(1, 0)

-- --- Меню HHUB с функцией Fly ---
local hhubFrame = Instance.new("Frame", gui)
hhubFrame.Size = UDim2.new(0, 200, 0, 150)
hhubFrame.Position = UDim2.new(1, -210, 0, 10)
hhubFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
hhubFrame.Visible = false

-- Округление окна HHUB
local cornerHHUBFrame = Instance.new("UICorner", hhubFrame)
cornerHHUBFrame.CornerRadius = UDim.new(0.1, 0)

-- Кнопка "Fly"
local flyButton = Instance.new("TextButton", hhubFrame)
flyButton.Size = UDim2.new(1, -20, 0, 40)
flyButton.Position = UDim2.new(0, 10, 0, 10)
flyButton.Text = "Fly"
flyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
flyButton.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
flyButton.Font = Enum.Font.SourceSansBold
flyButton.TextSize = 20

-- Округление кнопки Fly
local cornerFlyButton = Instance.new("UICorner", flyButton)
cornerFlyButton.CornerRadius = UDim.new(0.1, 0)

-- Кнопка "Закрыть" для HHUB
local closeHHUBButton = Instance.new("TextButton", hhubFrame)
closeHHUBButton.Size = UDim2.new(0, 40, 0, 40)
closeHHUBButton.Position = UDim2.new(1, -50, 0, -50)
closeHHUBButton.Text = "X"
closeHHUBButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeHHUBButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeHHUBButton.Font = Enum.Font.SourceSansBold
closeHHUBButton.TextSize = 20

-- Округление кнопки закрытия HHUB
local cornerCloseHHUB = Instance.new("UICorner", closeHHUBButton)
cornerCloseHHUB.CornerRadius = UDim.new(0.5, 0)

-- Кнопка "Скрыть" для скрытия меню HHUB
local hideHHUBButton = Instance.new("TextButton", hhubFrame)
hideHHUBButton.Size = UDim2.new(0, 50, 0, 50)
hideHHUBButton.Position = UDim2.new(0, 10, 1, -60)
hideHHUBButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hideHHUBButton.Text = "Скрыть"
hideHHUBButton.TextColor3 = Color3.fromRGB(255, 255, 255)
hideHHUBButton.Font = Enum.Font.SourceSansBold
hideHHUBButton.TextSize = 18

-- Округление кнопки "Скрыть"
local cornerHideHHUB = Instance.new("UICorner", hideHHUBButton)
cornerHideHHUB.CornerRadius = UDim.new(0.1, 0)

-- Функция для открытия меню HHUB
hhubButton.MouseButton1Click:Connect(function()
    hhubFrame.Visible = true
end)

-- Функция для скрытия меню HHUB
hideHHUBButton.MouseButton1Click:Connect(function()
    hhubFrame.Visible = false
end)

-- Функция для закрытия меню HHUB
closeHHUBButton.MouseButton1Click:Connect(function()
    hhubFrame.Visible = false
end)

-- Функция для выполнения скрипта Fly
flyButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLY-GUI-V3-19840"))()
end)
