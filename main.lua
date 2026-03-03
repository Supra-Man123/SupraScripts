print("Hahahah I am SupraMan ☘️🍀")

-- Services
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")

-- Create the big block
local block = Instance.new("Part")
block.Size = Vector3.new(50, 50, 50) -- Very big block
block.Anchored = true
block.Position = Vector3.new(0, 200, 0) -- High in the sky
block.Parent = Workspace
block.Name = "RainbowBlock"
block.Material = Enum.Material.Neon

-- Rainbow colors
local colors = {
    Color3.fromRGB(255, 0, 0),    -- Red
    Color3.fromRGB(255, 127, 0),  -- Orange
    Color3.fromRGB(255, 255, 0),  -- Yellow
    Color3.fromRGB(0, 255, 0),    -- Green
    Color3.fromRGB(0, 0, 255),    -- Blue
    Color3.fromRGB(75, 0, 130),   -- Indigo
    Color3.fromRGB(148, 0, 211)   -- Violet
}

-- Tween to cycle colors
local index = 1
while true do
    local nextIndex = index + 1
    if nextIndex > #colors then nextIndex = 1 end
    
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(block, tweenInfo, {Color = colors[nextIndex]})
    tween:Play()
    tween.Completed:Wait()
    
    index = nextIndex
end
