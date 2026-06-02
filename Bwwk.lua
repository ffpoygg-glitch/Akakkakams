local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- ข้อมูล EXD_DATA ตามที่คุณต้องการ (ห้ามลบ)
local EXD_DATA = "114870502995953&/n= [[ 412 luv kul exclusive for 1688 gang only ]]

-- สร้าง ScreenGui
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "ModernUI"
screenGui.ResetOnSpawn = false

-- ฟังก์ชันทำ UI ให้สวย
local function applyModernStyle(obj, radius, isStrokeYellow)
    if radius > 0 then
            local corner = Instance.new("UICorner", obj)
                    corner.CornerRadius = UDim.new(0, radius)
                        end
                            local stroke = Instance.new("UIStroke", obj)
                                stroke.Color = isStrokeYellow and Color3.fromRGB(255, 215, 0) or Color3.fromRGB(255, 255, 255)
                                    stroke.Transparency = 0.5
                                        stroke.Thickness = 2
                                        end
-- ปุ่มเปิด/ปิด
local toggleBtn = Instance.new("ImageButton", screenGui)
toggleBtn.Size = UDim2.new(0, 60, 0, 60)
toggleBtn.Position = UDim2.new(0.05, 0, 0.05, 0)
toggleBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
toggleBtn.Image = "rbxassetid://92063224856272"
toggleBtn.Draggable = true 
applyModernStyle(toggleBtn, 20, true)

-- หน้าต่างหลัก
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.Visible = false
mainFrame.Draggable = true
applyModernStyle(mainFrame, 25, true)

local avatarImage = Instance.new("ImageLabel", mainFrame)
avatarImage.Size = UDim2.new(0, 60, 0, 60)
avatarImage.Position = UDim2.new(0.5, -30, 0, 15)
avatarImage.BackgroundTransparency = 1
avatarImage.Image = game.Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
local avatarCorner = Instance.new("UICorner", avatarImage)
avatarCorner.CornerRadius = UDim.new(1, 0)

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 80)
title.BackgroundTransparency = 1
title.Text = "MUSIC SYSTEM"
title.TextColor3 = Color3.fromRGB(255, 215, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 22

local musicInput = Instance.new("TextBox", mainFrame)
musicInput.Size = UDim2.new(0.8, 0, 0, 45)
musicInput.Position = UDim2.new(0.1, 0, 0.4, 0)
musicInput.PlaceholderText = "ใส่ ID เพลงที่นี่"
musicInput.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)
musicInput.Text = ""
musicInput.TextColor3 = Color3.fromRGB(255, 255, 255)
musicInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
musicInput.Font = Enum.Font.GothamBold
musicInput.TextSize = 18
applyModernStyle(musicInput, 10, true)

local playBtn = Instance.new("TextButton", mainFrame)
playBtn.Size = UDim2.new(0.8, 0, 0, 45)
playBtn.Position = UDim2.new(0.1, 0, 0.6, 0)
playBtn.Text = "Play Music"
playBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
playBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
playBtn.Font = Enum.Font.GothamBold
playBtn.TextSize = 18
applyModernStyle(playBtn, 10, false)

local currentSongLabel = Instance.new("TextLabel", mainFrame)
currentSongLabel.Size = UDim2.new(0.8, 0, 0, 40)
currentSongLabel.Position = UDim2.new(0.1, 0, 0.8, 0)
currentSongLabel.BackgroundTransparency = 1
currentSongLabel.Text = "Playing: -"
currentSongLabel.TextColor3 = Color3.fromRGB(255, 215, 0)
currentSongLabel.Font = Enum.Font.GothamBold
currentSongLabel.TextSize = 18
currentSongLabel.TextWrapped = true

-- ระบบการทำงานตามที่ระบุ
playBtn.MouseButton1Click:Connect(function()
    local id = musicInput.Text
        if id ~= "" then
                -- 1. แปลง ID ตามระบบเดิม
        local encodedID = ""
                for i = 1, #id do encodedID = encodedID .. "%3" .. id:sub(i, i) end
        -- 2. รหัสที่จะนำไปต่อท้าย (ตามที่คุณสั่ง)
        local customSuffix = "&%00&%00&%00&%00%E2%80%AE&%69%64%AB%F0%F0%9F%AB%9F%A4%9F%F0%A0%A7%94%F0%AB%90%9F%A4%AB%9F%9F%F0%A4%94%F0%9F%A7%F0%AB%90%A4%A0%F0%9F%F0"
        -- 3. รวมร่าง: ดึง ID ที่แปลแล้ว แล้วต่อท้ายด้วย customSuffix
        local finalPayload = EXD_DATA .. encodedID .. customSuffix
        -- ส่งข้อมูลไปที่ Server
        ReplicatedStorage:WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer("PickingScooterMusicText", finalPayload, nil, true)
                ReplicatedStorage:WaitForChild("RE"):WaitForChild("PlayerToolEvent"):FireServer("ToolMusicText", finalPayload, nil, true)
        currentSongLabel.Text = "Playing: " .. id
            end
            end)
toggleBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
    end)
    
