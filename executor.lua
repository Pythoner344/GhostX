local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))

-- Создаём кнопку "S"
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

-- Округление кнопки "S"
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
