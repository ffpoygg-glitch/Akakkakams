-- [[สคริปต์จาก 191 | สร้างโดย Hon]] --

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- ลบ UI เก่าถ้ามีอยู่
if PlayerGui:FindFirstChild("Hon_Music_BypassUI") then
    PlayerGui.Hon_Music_BypassUI:Destroy()
end

-- สร้าง ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Hon_Music_BypassUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

-- หน้าต่างหลัก (Main Frame)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 320, 0, 260)
MainFrame.Position = UDim2.new(0.5, -160, 0.4, -130)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

-- ใส่ความมนให้มุมหน้าต่าง
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = MainFrame

-- เส้นขอบหรูๆ (Stroke)
local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(235, 180, 50) -- สีทอง/เหลือง
MainStroke.Thickness = 1.5
MainStroke.Parent = MainFrame

-- แถบหัวข้อด้านบนสำหรับลาก (Title Bar)
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 35)
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleBarCorner = Instance.new("UICorner")
TitleBarCorner.CornerRadius = UDim.new(0, 8)
TitleBarCorner.Parent = TitleBar

local TitleText = Instance.new("TextLabel")
TitleText.Size = UDim2.new(1, -40, 1, 0)
TitleText.Position = UDim2.new(0, 12, 0, 0)
TitleText.BackgroundTransparency = 1
TitleText.Text = "HON MUSIC BYPASS v19"
TitleText.TextColor3 = Color3.fromRGB(235, 180, 50)
TitleText.TextSize = 14
TitleText.Font = Enum.Font.GothamBold
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.Parent = TitleBar

-- ปุ่มปิดหน้าต่าง (Close Button)
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 2.5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(200, 50, 50)
CloseBtn.TextSize = 16
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Parent = TitleBar

-- ช่องใส่ ID เพลง (Song ID Box)
local SongIDBox = Instance.new("TextBox")
SongIDBox.Name = "SongIDBox"
SongIDBox.Size = UDim2.new(1, -30, 0, 38)
SongIDBox.Position = UDim2.new(0, 15, 0, 55)
SongIDBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SongIDBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SongIDBox.PlaceholderText = "ใส่ไอดีเพลงตรงนี้..."
SongIDBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
SongIDBox.Text = ""
SongIDBox.TextSize = 14
SongIDBox.Font = Enum.Font.Gotham
SongIDBox.BorderSizePixel = 0
SongIDBox.Parent = MainFrame

local SongCorner = Instance.new("UICorner")
SongCorner.CornerRadius = UDim.new(0, 6)
SongCorner.Parent = SongIDBox

-- ช่องใส่ Junk/ขยะหลอกเซิฟเวอร์ (Junk Payload Box)
local JunkBox = Instance.new("TextBox")
JunkBox.Name = "JunkBox"
JunkBox.Size = UDim2.new(1, -30, 0, 60)
JunkBox.Position = UDim2.new(0, 15, 0, 105)
JunkBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
JunkBox.TextColor3 = Color3.fromRGB(150, 150, 150)
JunkBox.ClearTextOnFocus = false
JunkBox.MultiLine = true
JunkBox.PlaceholderText = ":
= [[412 luv kul exclusive for 1688 gang only ]] ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 Y9F%AB%F0%F0%9F%AB%9F%A4%9F%F0%A0%A7%94%F0%AB%90%9F%A4%AB%9F%9F%F0%A4%94%F0%9F%A7%F0%AB%90%A4%A0%F0%9F%F0%9F%AB%9F%9F%A0%94%F0%F0%A7%F0%A4%90%A4%AB%9F%F0%90%AB%A7%AB%F0%9F%9F%A0%9F%94%9F%F0%A4%F0%A4%E2%80%AE ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 &รยขรขโ€ยฌ9%E6%80%20%0A%09%AF%E6%89%0D%89%E8%80%B4%80%AF%0D%B4%89%E6%E6%09%0A%20%80%E8%89%80%89%AF%89%20%E8%80%0D%0A%09%E6%E6%B4%E2%80%AE&รยขรขโ€ยฌรขโฌยน    
=Sโ€ฎ&i%64=%31%34%30%34%39%37%34%31%35%34%30%32%31%30%33%26%69%64%3D%31%32%39%35%36%39%30%34%39%34%37%36%37%33%34%26%61%73%73%65%74%6e%61%6d%65%3D%6D%36%6C%70%63%6B%78%61%B1%76%72%39%0D%0A%77%74%31%67%32%30%35%73%65%37%68%71%6F%79%31%69%33%75%64%62%38%C3%6E%7A%6A%34%66%76%6D%33%77%31%32%6A%39%68%31%73%30%34%79%35%70%6F%B1%63%65%74%75%6E%62%0A%69%6C%0D%71%66%78%36%72%6B%7A%67%64%38%61%C3%37%69%6E%38%73%72%63%34%37%64%6C%0D%6D%75%78%31%33%61%B1%65%6A%68%70%36%71%6B%79%62%32%7A%39%77%31%66โ€%74%0A%76%30%35%C3%6F%67%35%63%6D%72%64%0D%6E%7A%62%78%6A%77%74%31%75%79%76%38%65%33%73%30%66%0A%69%6B%31%32%36%C3%67%68%70%6F%6C%71%61%B1%37%39%34 %26%69%64%3D%31%33%37%34%33%34%38%31%31%32%33%38%31%32%34%26%61%73%73%65%74%6e%61%6d%65%3D%63%72%6B%79%6E%62%75%74%0D%76%36%31%68%0A%38%6F%32%33%78%B1%77%C3%67%73%69%70%30%7A%65%39%64%34%6C%66%6A%6D%71%61%37%35%31%64%37%38%73%79%74%6F%77%67%6A%34%6C%68%72%39%6D%0D%70%6E%0A%30%7A%32%36%69%66%31%6B%35%62%B1%65%31%C3%33%71%76%61%78%75%63%34%31%70%30%63%35%38%0D%68%C3%67%6B%B1%73%79%6D%62%33%37%36%39%76%78%77%7A%71%72%31%6E%0A%61%74%32%65%64%66%6A%75%69%6F%6C%0A%73%33%34%76%6C%36%B1%75%38%74%37%32%66%6E%79%62%64%61%6A%7A%68%69%78%72%6D%65%39%6B%31%35%30%6F%77%C3%71%67%31%63%70%0D&%69d=%39%37%31%36%37%35%32%36%33%39%35%37%32%32&%7A%71%68%37%38%31%64%33%61%36%6D%35%6C%79%6E%32%77%6B%73%70%C3%67%74%63%30%34%B1%65%75%66%78%69%72%39%0D%6F%62%0A%6A%76%31%73%79%6F%77%70%7A%67%72%0A%0D%36%61%31%31%69%64%C3%74%B1%62%76%30%33%34%78%63%6A%71%6C%35%6B%6D%39%37%68%38%65%66%75%32%6E%EF%BB%BF%E2%80%8B%C2%A0%E2%80%8Fa%25b%3Ac&%76ersion=2&%A3%40d%3B%F0%9F%A4%94%F0%9F%A4%AB%F0%9F%A7%90%F0%9F%AB%A0%E2%80%AE!}}}V&id=%34%30%30%30%37%30%39%30%37%3684669374&%4546รฅย รฃรฆรฆยลธล“ยฐยซโฌยฐโฌ%20ยฃ%E3รฃโ€กล รฅโ€ %8Aย ยฏ%0Dย รฃรงรจยฅยคโฌรฃล“รขโฌลฝโ€ย ย รงโ€“รงโ€ฐโ€ฆโ€“ย ยดยปรจ%09รฅ%0Aรค%80ยฃรฅรงรงล รฆย รจ%20ย ยคโ€“โฌย โ€“โฌรฃยฐรข%80%0Dย รฅยโ€ฐโ€ 
=Aโ€ฎรง%E3ล“รฃ%8Aยปลฝยดรจรฃย โฌยฐย ลธ%0Aล“ยฏโฌยฅโ€โ€ฆ%09ยซรฃโ€กรฅรครฆรงรครฃรฃรฆรงย ลธยฐ%E3รฃ%0Aรจ%80รฃโฌยฐย โ€“ยฃโ€กลฝรฆยฏ%0Dย โ€ฐยป%8Aรจย ล“โฌล โ€โ€“รขยฅยซรฅย ยคโ€ โฌ%09%20ล“โ€ฆรฅยโฌรงยดรฅย ล“โฌรฅรจยคโฌย ย %E3รงล“โ€ ยดรฆ%80ล โฌยซยฐรฃลฝรฃยปรฃยฐรฅโ€“รฅยฏรฆ%8Aโ€โฌ%0Dรจย ย รขย %20%09โ€“ลธรคโ€ฆยฅรงย รง%0Aรฃโ€กโ€ฐยฃยรจย ย ยซย รจยฃ%0Aโฌ%09ล“ยฐโ€โ€ฆรฃรฃรฅโฌลธรคโ€“โ€กโ€“ย โ€ฐโ€ ลฝยฏรขยครฅยดรง%80โฌ%E3ยรงย รฆ%8A%20ยฅ%0Dโฌยฐรงยปรฃล“ย รฅล รฆรฃย โ€ย %0Aยปยรฅย รข%E3รฆโ€ฐย รจรฃย โ€“%0Dโ€ รงโ€ฆรคยคยฃล“รจรง%20ยฐรฃโฌ%8Aยดรฅยฏรฆรงรฅโฌล รฃโ€กยซโฌโ€“ล“ลฝ%09ลธยฅย รฃยฐ%80โฌยโฌโ€ รฃยฐ%20รจรฅ%80ยซรฆย %0A%09ล“ยฐโฌย รฅรครฆรฅรงโ€ล ล“%8Aโ€ฆรงโฌย รฃโ€“ยฃย รขย โ€“ยฏยดรฃยฅ%0Dลฝย ยป%E3รฃโ€ฐรจโฌลธรงโ€กยคโ€ ย โ€“%80รงล“รงรฃลฝล รฃโ€ฆรขโฌย ยยฅยฃโ€โ€ฐล“%8A%0Dรครฃ%09ยฐ%E3ย รฅรฅยฏโ€“ย โฌโ€กรฆลธยซยดรจ%20โฌโฌย %0Aยฐรฆรจย รฃยครฅยปรงโฌย%8Aร ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 โฐยซโ€ฐโ€ย รฃลธโ€ฆรฅรง%80ยฃย รฅล ยฅรจย โ€“โ€กย รงยคโ€ ยฏ%09%0Aรงโฌ%20โ€“รฃยฐย รฆล“รฃรฅรฆ%0Dรจลฝล“%E3ยปรฃยดย รคโฌโฌรฃรขโ€รฅ%0Dย ยฅ%0Aรฃล“รฆโ€“%8Aรงยปโฌยดยฐโ€กรฃล“ล โ€ รค%E3%80โ€ฆลธโฌรฅรฆยฐรงโฌ%20รฃรจยคย ลฝย รงย ยซรจ%09ยยฏรฅโ€“ยฃย ย โฌโ€ฐย ลฝรงล“รฃรงโ€ฐย ยฐโฌรฆรงโฌโ€ โ€ฆรฆรฅรคย รจ%0D%0A%8Aโฌรฃรจรฅยฅโฌโ€กยซโ€“ยฃยปย ย รฃ%20ยคยดรฃล“ล โ€“ยฏรขลธ%80รฅย ยฐ%E3โ€%09ยโฌรฅรจยด%20ลฝรฅโฌรฃ%80ยฏรขโ€ ย โ€“ยปโ€ฐย ยฐลธรฆรค%8Aยรงโ€“ยฃรฆย %0Aรงยฐยฅยคล“รฃยซโ€%0D
=Cโ€ฎล“รงโฌ%09รฃย รฃโ€กโ€ฆรจย ย %E3ล โฌรฅยฅยดรขรงรฆ%E3รฅยฐ%20รงโฌโฌโ€ยฏยปรฆย %0D%0Aยคยซล“%8Aลฝล โฌย รคย โ€ฆย รฅโ€“ล“รฃโ€ ยฃรฃ%09%80ย โ€“รฃโ€กรฅลธรงรจโ€ฐยฐรฃยย รจโฌโฌยยซโฌ%0Dล“รฅยดยฏยฃรงรฅย รฃรฆรฆยลธล“ยฐยซโฌยฐโฌ%20ยฃ%E3รฃโ€กล รฅโ€ %8Aร ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 โฐยซโ€ฐโ€ย รฃลธโ€ฆรฅรง%80ยฃย รฅล ยฅรจย โ€“โ€กย รงยคโ€ ยฏ%09%0Aรงโฌ%20โ€“รฃยฐย รฆล“รฃรฅรฆ%0Dรจลฝล“%E3ยปรฃยดย รคโฌโฌรฃรขโ€รฅ%0Dย ยฅ%0Aรฃล“รฆโ€“%8Aรงยปโฌยดยฐโ€กรฃล“ล โ€ รค%E3%80โ€ฆลธโฌรฅรฆยฐรงโฌ%20รฃรจยคย ลฝย รงย ยซรจ%09ยยฏรฅโ€“ยฃย ย โฌโ€ฐย ลฝรงล“รฃรงโ€ฐย ยฐโฌรฆรงโฌโ€ โ€ฆรฆรฅรคย รจ%0D%0A%8Aโฌรฃรจรฅยฅโฌโ€กยซโ€“ยฃยปย ย รฃ%20ยคยดรฃล“ล โ€“ยฏรขลธ%80รฅย ยฐ%E3โ€%09ยโฌรฅรจยด%20ลฝรฅโฌรฃ%80ยฏรขโ€ ย โ€“ยปโ€ฐย ยฐลธรฆรค%8Aยรงโ€“ยฃรฆย %0Aรงยฐยฅยคล“รฃยซโ€%0D
=Cโ€ฎล“รงโฌ%09รฃย รฃโ€กโ€ฆรจย ย %E3ล โฌรฅยฅยดรขรงรฆ%E3รฅยฐ%20รงโฌโฌโ€ยฏยปรฆย %0D%0Aยคยซล“%8Aลฝล โฌย รคย โ€ฆย รฅโ€“ล“รฃโ€ ยฃรฃ%09%80ย โ€“รฃโ€กรฅลธรงรจโ€ฐยฐรฃยย รจโฌโฌยยซโฌ%0Dล“รฅยดยฏยฃรงรฅย รฃรฆรฆยลธล“ยฐยซโฌยฐโฌ%20ยฃ%E3รฃโ€กล รฅโ€ %8Aร ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 โฐยซโ€ฐโ€ย รฃลธโ€ฆรฅรง%80ยฃย รฅล ยฅรจย โ€“โ€กย รงยคโ€ ยฏ%09%0Aรงโฌ%20โ€“รฃยฐย รฆล“รฃรฅรฆ%0Dรจลฝล“%E3ยปรฃยดย รคโฌโฌรฃรขโ€รฅ%0Dย ยฅ%0Aรฃล“รฆโ€“%8Aรงยปโฌยดยฐโ€กรฃล“ล โ€ รค%E3%80โ€ฆลธโฌรฅรฆยฐรงโฌ%20รฃรจยคย ลฝย รงย ยซรจ%09ยยฏรฅโ€“ยฃย ย โฌโ€ฐย ลฝรงล“รฃรงโ€ฐย ยฐโฌรฆรงโฌโ€ โ€ฆรฆรฅรคย รจ%0D%0A%8Aโฌรฃรจรฅยฅโฌโ€กยซโ€“ยฃยปย ย รฃ%20ยคยดรฃล“ล โ€“ยฏรขลธ%80รฅย ยฐ%E3โ€%09ยโฌรฅรจยด%20ลฝรฅโฌรฃ%80ยฏรขโ€ ย โ€“ยปโ€ฐย ยฐลธรฆรค%8Aยรงโ€“ยฃรฆย %0Aรงยฐยฅยคล“รฃยซโ€%0D
=Cโ€ฎล“รงโฌ%09รฃย รฃโ€กโ€ฆรจย ย %E3ล โฌรฅยฅยดรขรงรฆ%E3รฅยฐ%20รงโฌโฌโ€ยฏยปรฆย %0D%0Aยคยซล“%8Aลฝล โฌย รคย โ€ฆย รฅโ€“ล“รฃโ€ ยฃรฃ%09%80ย โ€“รฃโ€กรฅลธรงรจโ€ฐยฐรฃยย รจโฌโฌยยซโฌ%0Dล“รฅยดยฏยฃรงรฅย รฃรฆรฆยลธล“ยฐยซโฌยฐโฌ%20ยฃ%E3รฃโ€กล รฅโ€ %8Aร ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 โฐยซโ€ฐโ€ย รฃลธโ€ฆรฅรง%80ยฃย รฅล ยฅรจย โ€“โ€กย รงยคโ€ ยฏ%09%0Aรงโฌ%20โ€“รฃยฐย รฆล“รฃรฅรฆ%0Dรจลฝล“%E3ยปรฃยดย รคโฌโฌรฃรขโ€รฅ%0Dย ยฅ%0Aรฃล“รฆโ€“%8Aรงยปโฌยดยฐโ€กรฃล“ล โ€ รค%E3%80โ€ฆลธโฌรฅรฆยฐรงโฌ%20รฃรจยคย ลฝย รงย ยซรจ%09ยยฏรฅโ€“ยฃย ย โฌโ€ฐย ลฝรงล“รฃรงโ€ฐย ยฐโฌรฆรงโฌโ€ โ€ฆรฆรฅรคย รจ%0D%0A%8Aโฌรฃรจรฅยฅโฌโ€กยซโ€“ยฃยปย ย รฃ%20ยคยดรฃล“ล โ€“ยฏรขลธ%80รฅย ยฐ%E3โ€%09ยโฌรฅรจยด%20ลฝรฅโฌรฃ%80ยฏรขโ€ ย โ€“ยปโ€ฐย ยฐลธรฆรค%8Aยรงโ€“ยฃรฆย %0Aรงยฐยฅยคล“รฃยซโ€%0D
=Cโ€ฎล“รงโฌ%09รฃย รฃโ€กโ€ฆรจย ย %E3ล โฌรฅยฅยดรขรงรฆ%E3รฅยฐ%20รงโฌโฌโ€ยฏยปรฆย %0D%0Aยคยซล“%8Aลฝล โฌย รคย โ€ฆย รฅโ€“ล“รฃโ€ ยฃรฃ%09%80ย โ€“รฃโ€กรฅลธรงรจโ€ฐยฐรฃยย รจโฌโฌยยซโฌ%0Dล“รฅยดยฏยฃรงรฅย รฃรฆรฆยลธล“ยฐยซโฌยฐโฌ%20ยฃ%E3รฃโ€กล รฅโ€ %8Aร ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 โฐยซโ€ฐโ€ย รฃลธโ€ฆรฅรง%80ยฃย รฅล ยฅรจย โ€“โ€กย รงยคโ€ ยฏ%09%0Aรงโฌ%20โ€“รฃยฐย รฆล“รฃรฅรฆ%0Dรจลฝล“%E3ยปรฃยดย รคโฌโฌรฃรขโ€รฅ%0Dย ยฅ%0Aรฃล“รฆโ€“%8Aรงยปโฌยดยฐโ€กรฃล“ล โ€ รค%E3%80โ€ฆลธโฌรฅรฆยฐรงโฌ%20รฃรจยคย ลฝย รงย ยซรจ%09ยยฏรฅโ€“ยฃย ย โฌโ€ฐย ลฝรงล“รฃรงโ€ฐย ยฐโฌรฆรงโฌโ€ โ€ฆรฆรฅรคย รจ%0D%0A%8Aโฌรฃรจรฅยฅโฌโ€กยซโ€“ยฃยปย ย รฃ%20ยคยดรฃล“ล โ€“ยฏรขลธ%80รฅย ยฐ%E3โ€%09ยโฌรฅรจยด%20ลฝรฅโฌรฃ%80ยฏรขโ€ ย โ€“ยปโ€ฐย ยฐลธรฆรค%8Aยรงโ€“ยฃรฆย %0Aรงยฐยฅยคล“รฃยซโ€%0D
=Cโ€ฎล“รงโฌ%09รฃย รฃโ€กโ€ฆรจย ย %E3ล โฌรฅยฅยดรขรงรฆ%E3รฅยฐ%20รงโฌโฌโ€ยฏยปรฆย %0D%0Aยคยซล“%8Aลฝล โฌย รคย โ€ฆย รฅโ€“ล“รฃโ€ ยฃรฃ%09%80ย โ€“รฃโ€กรฅลธรงรจโ€ฐยฐรฃยย รจโฌโฌยยซโฌ%0Dล“รฅยดยฏยฃรงรฅย รฃรฆรฆยลธล“ยฐยซโฌยฐโฌ%20ยฃ%E3รฃโ€กล รฅโ€ %8Aร ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 โฐยซโ€ฐโ€ย รฃลธโ€ฆรฅรง%80ยฃย รฅล ยฅรจย โ€“โ€กย รงยคโ€ ยฏ%09%0Aรงโฌ%20โ€“รฃยฐย รฆล“รฃรฅรฆ%0Dรจลฝล“%E3ยปรฃยดย รคโฌโฌรฃรขโ€รฅ%0Dย ยฅ%0Aรฃล“รฆโ€“%8Aรงยปโฌยดยฐโ€กรฃล“ล โ€ รค%E3%80โ€ฆลธโฌรฅรฆยฐรงโฌ%20รฃรจยคย ลฝย รงย ยซรจ%09ยยฏรฅโ€“ยฃย ย โฌโ€ฐย ลฝรงล“รฃรงโ€ฐย ยฐโฌรฆรงโฌโ€ โ€ฆรฆรฅรคย รจ%0D%0A%8Aโฌรฃรจรฅยฅโฌโ€กยซโ€“ยฃยปย ย รฃ%20ยคยดรฃล“ล โ€“ยฏรขลธ%80รฅย ยฐ%E3โ€%09ยโฌรฅรจยด%20ลฝรฅโฌรฃ%80ยฏรขโ€ ย โ€“ยปโ€ฐย ยฐลธรฆรค%8Aยรงโ€“ยฃรฆย %0Aรงยฐยฅยคล“รฃยซโ€%0D
=Cโ€ฎล“รงโฌ%09รฃย รฃโ€กโ€ฆรจย ย %E3ล โฌรฅยฅยดรขรงรฆ%E3รฅยฐ%20รงโฌโฌโ€ยฏยปรฆย %0D%0Aยคยซล“%8Aลฝล โฌย รคย โ€ฆย รฅโ€“ล“รฃโ€ ยฃรฃ%09%80ย โ€“รฃโ€กรฅลธรงรจโ€ฐยฐรฃยย รจโฌโฌยยซโฌ%0Dล“รฅยดยฏยฃรงรฅย รฃรฆรฆยลธล“ยฐยซโฌยฐโฌ%20ยฃ%E3รฃโ€กล รฅโ€ %8Aย ยฏ%0Dย รฃรงรจยฅยคโฌรฃล“รขโฌลฝโ€ย ย รงโ€“รงโ€ฐโ€ฆโ€“ย ยดยปรจ%09รฅ%0Aรค%80ยฃรฅรงรงล รฆย รจ%20ย ยคโ€“โฌย โ€“โฌรฃยฐรข%80%0Dย รฅยโ€ฐโ€ รง%E3ล“รฃ%8Aยปลฝยดรจรฃย โฌยฐย ลธ%0Aล“ยฏโฌยฅโ€โ€ฆ%09ยซรฃโ€กรฅรครฆรงรครฃรฃรฆรงย ลธยฐ%E3รฃ%0Aรจ%80รฃโฌยฐย โ€“ยฃโ€กลฝรฆยฏ%0Dย โ€ฐยป%8Aรจย ล“โฌล โ€โ€“รขยฅยซรฅย ยคโ€ โฌ%09%20ล“โ€ฆรฅยโฌรงยดรฅย ล“โฌรฅรจยคโฌย ย %E3รงล“โ€ ยดรฆ%80ล โฌยซยฐรฃลฝรฃยปรฃยฐรฅโ€“รฅยฏรฆ%8Aโ€โฌ%0Dรจย ย รขย %20%09โ€“ลธรคโ€ฆยฅรงย รง%0Aรฃโ€กโ€ฐยฃยรจย ย ยซย รจยฃ%0Aโฌ%09ล“ยฐโ€โ€ฆรฃรฃรฅโฌลธรคโ€“โ€กโ€“ย โ€ฐโ€ ลฝยฏรขยครฅยดรง%80โฌ%E3ยรงย รฆ%8A%20ยฅ%0Dโฌยฐรงยปรฃล“ย รฅล รฆรฃย โ€ย %0Aยปยรฅย รข%E3รฆโ€ฐย รจรฃย โ€“%0Dโ€ รงโ€ฆรคยคยฃล“รจรง%2                 0โ€ยฐรฃโฌ%8Aยดรฅยฏรฆรงรฅโฌล รฃโ€กยซโฌโ€“ล“ลฝ%09ลธยฅย รฃยฐ%80โฌยโฌโ€ รฃยฐ%20รจรฅ%80ยซรฆย %0A%09ล“ยฐโฌย รฅรครฆรฅรงโ€ล ล“%8Aโ€ฆรงโฌย รฃโ€“ยฃย รขย โ€“ยฏยดรฃยฅ%0Dลฝย ยป%E3รฃโ€ฐรจโฌลธรงโ€กยคโ€ ย โ€“%80รงล“รงรฃลฝล รฃโ€ฆรขโฌย ยยฅยฃโ€โ€ฐล“%8A%0Dรครฃ%09ยฐ%E3ย รฅรฅยฏโ€“ย โฌโ€กรฆลธยซยดรจ%20โฌโฌย %0Aยฐรฆรจย รฃยครฅยปรงโฌย%8Aรขยฐยซโ€ฐโ€ย รฃลธโ€ฆรฅรง%80ยฃย รฅล ยฅรจย โ€“โ€กย รงยคโ€ ยฏ%09%0Aรงโฌ%20โ€“รฃยฐย รฆล“รฃรฅรฆ%0Dรจลฝล“%E3ยปรฃยดย รคโฌโฌรฃรขโ€รฅ%0Dย ยฅ%0Aรฃล“รฆโ€“%8Aรงยปโฌยดยฐโ€กรฃล“ล โ€ รค%E3%80โ€ฆลธโฌรฅรฆยฐรงโฌ%20รฃรจยคย ลฝย รงย ยซรจ%09ยยฏรฅโ€“ยฃย ย โฌโ€ฐย ลฝรงล“รฃรงโ€ฐย ยฐโฌรฆรงโฌโ€ โ€ฆรฆรฅรคย รจ%0D%0A%8Aโฌรฃรจรฅยฅโฌโ€กยซโ€“ยฃยปย ย รฃ%20ยคยดรฃล“ล โ€“ยฏรขลธ%80รฅย ยฐ%E3โ€%09ยโฌรฅรจยด%20ลฝรฅโฌรฃ%80ยฏรขโ€ ย โ€“ยปโ€ฐย ยฐลธรฆรค%8Aยรงโ€“ยฃรฆย %0Aรงยฐยฅยคล“รฃยซโ€%0Dล“รงโฌ%09รฃย รฃโ€กโ€ฆรจย ย %E3ล โฌรฅยฅยดรขรงรฆ%E3รฅยฐ%20รงโฌโฌโ€ยฏยปรฆย %0D%0Aยคยซล“%8Aลฝล โฌย รคย โ€ฆย รฅโ€“ล“รฃโ€ ยฃรฃ%09%80ย โ€“รฃโ€กรฅลธรงรจโ€ฐยฐรฃยย รจโฌโฌยยซโฌ%0Dล“รฅยดยฏยฃรง%80ย รฃยค%20ย โฌยปย %8Aรฃโ€“รฃ%0Aรงย %09โ€ รขรฆลฝล“รจโ€ฆรงรฅโ€ฐยฐโฌรฆโ€“รฅโ€กรฃรจโ€ล %80ย รฃยค%20ย โฌยปย %8Aรฃโ€“รฃ%0Aรงย %09โ€ รขรฆลฝล“รจโ€ฆรงรฅโ€ฐยฐโฌรฆโ€“รฅโ€กรฃรจโ€ล &%69%64 =      %37 %32 %35 %31 %33 %32 %38 %33 %35    %31&    id = 1885881335441 &id~  
=Xโ€ฎ&%69%64=%37%31%33%35%32%32%33%36 && i%64ย =1%31273%37751%3441%33&%69%64=00%31%32%30%31%30%34%38%37%31%33%36%30%33%32%37&%00&%00%E6%E8%20%E6%AF%B4%89%0A%89%0D%09%80%80%0D%89%0A%89%80%B4%E8%E6%80%09%E6%AF%20%0A%AF%80%89%0D%09%20%80%E8%B4%89%E6%E6%0D%89%80%E6%0A%20%AF%E6%80%E8%09%B4%89%E6%AF%89%89%20%B4%0D%0A%E8%09%E6%80%80%0A%20%B4%AF%80%09%80%E8%E6%0D%89%89%E6%B4%89%0A%20%E6%80%80%89%0D%E8%AF%09%E6%80%89%09%0D%E6%20%B4%89%80%E6%AF%0A%E8%E6%80%89%E8%0A%20%0D%80%89%E6%AF%09%B4%20%0A%E6%0D%B4%AF%E6%89%09%80%89%E8%80%20%89%09%E6%0A%89%80%E6%80%AF%0D%B4%E8%09%B4%0D%89%89%E6%E6%E8%AF%20%0A%80%80%B4%89%0D%09%AF%0A%80%80%E6%89%20%E6%E8%89%09%89%0A%0D%AF%80%E8%20%80%E6%B4%E6%80%B4%E8%E6%80%89%E6%09%0A%0D%89%AF%20%E2%80%AE&รขโฌโ€น%69%64=00%31%33%35%37%31%37%36%35%33%34%38%39%34%36%39&%00&%00%E2%80%AE&รขโฌโ€น%69d=00%31%31%37%39%37%38%39%30%31%30%31%36%32%32%35&%00&%00%9F%F0%9F%94%AB%A4%A0%F0%AB%9F%A4%F0%9F%90%A7%F0%F0%94%F0%A7%A4%AB%F0%A0%9F%F0%9F%9F%AB%A4%90%9F%A4%90%A7%9F%F0%F0%94%AB%F0%9F%A0%9F%A4%9F%AB%F0%AB%A7%9F%F0%94%90%F0%9F%F0%9F%AB%A4%9F%A0%F0%A4%A4%9F%AB%90%9F%AB%94%F0%9F%A0%9F%A7%A4%F0%F0%F0%90%F0%9F%A4%F0%F0%AB %A7%9F%9F%94%F0%A0%9F%AB%A4%F0%90%A0%9F%AB%9F%94%F0%AB%A4%A4%F0%F0%A7%9F%9F%90%AB%9F%A7%F0%9F%A4%94%F0%F0%9F%A4%F0%AB%9F%A0%AB%F0%A0%F0%A4%AB%94 %9F%9F%9F%A7%F0%F0%9F%A4%90%9F%9F%A4%F0 %F0%A4%AB%A0%F0%A7%9F%90%9F%F0%AB%94%9F%F0%AB%AB%94%9F%F0%90%9F%A0%F0%A4%A4%9F%A7%F0%F0%A4%F0%9F%90%F0%94%A0%F0%9F%9F%9F%AB%A7%A4%AB%A4%9F%AB%A0%F0%A7%9F%F0%AB%94%9F%90%F0%9F%F0%A4%AB%90%A7%9F%F0%F0%9F%9F%A4%AB%94%A0%A4%F0%F0%9F%90%AB%94%9F%F0%9F%9F%F0%A4%AB%9F%F0%A7%A4%A0%F0%9F%AB%9F%F0%94%90%A4%9F%AB%A0%9F%F0%A7%F0%A4%F0%AB%9F%F0%9F%F0%F0%A4%9F%9F%AB%A7%A4%94%A0%90%F0%A7%A4%F0%F0%F0%9F%AB%A4%AB%9F%9F%A0%94%9F%F0%90%E2%80%AE&รขโฌโ€น%69%64=00%31%33%31%31%32%30%36%35%30%32%33%33%35%31%35&%00&%00%0D%09%89%AF%20%E8%80%E6%0A%80%E6%B4%89%0A%80%E6%20%E8%80%AF%0D%89%E6%09%89%B4%80%80%89%0A%E8%89%09%E6%20%AF%B4%0D%E6%E8%80%B4%80%E6%0A%0D%89%20%AF%09%E6%89%0D%89%09%0A%89%80%AF%80%E6%E6%E8%B4%20%0A%89%E6%80%E8%20%AF%B4%89%E6%0D%09%80%E6%80%E8%AF%09%E6%0A%0D%89%B4%89%80%20%80%80%E6%AF%89%20%B4%E8%89%0A%E6%0D%09%0D%89%B4%80%09%20%80%E6%AF%E8%89%E6%0A%89%09%0D%89%E6%0A%B4%E8%80%E6%20%AF%80%80%B4%89%E6%E8%0D%09%E6%0A%AF%20%80%89%80%20%0A%E6%0D%E8%89%AF%09%E6%89%B4%80%0A%80%89
=Eโ€ฎ%E2%EF%A0%8B%E2%A0%E2%E2%BB%8F%80%80%BF%C2%EF%8B%8B%C2%BF%80%8F%E2%E2%A0%80%BB%EF%C2%8F%A0%EF%80%BF%80%E2%BB%E2%8B%BB%C2%8B%80%8F%E2%EF%A0%E2%BF%80%8B%80%BB%E2%C2%BF%80%E2%A0%EF%8F%BF%8F%BB%E2%80%80%E2%A0%C2%EF%8B%A0%8B%8F%BB%BF%EF%80%C2%E2%80%E2%8B%EF%C2%80%BF%E2%BB%8F%80%A0%E2%8B%80%80%EF%E2%C2%A0%8F%BB%E2%BF%E2%80%AE&i%64=00%31%32%39%30%36%30%33%36%32%30%37%36%31%33%34&%00&%00%A7%9F%9F%AB%90%AB%F0%9F%F0%F0%F0%A4%A4%A0%9F%94%AB%AB%F0%F0%F0%A4%9F%A4%9F%F0%9F%94%9F%A7%A0%90%F0%A4%9F%F0%AB%9F%AB%A7%94%F0%A0%F0%A4%90%9F%9F%F0%94%9F%90%A4%9F%A0%A4%F0%AB%9F%F0%A7%F0%AB%9F%F0%9F%90%A0%9F%AB%A7%9F%A4%F0%F0%9F%A4%94%AB%F0%9F%AB%A7%9F%A4%F0%94%F0%9F%AB%90%F0%F0%A4%A0%9F%9F%F0%90%94%F0%9F%A4%AB%A4%AB%A0%A7%9F%F0%F0%9F%9F%A4%94%A4%F0%9F%AB%F0%90%9F%F0%A7%9F%F0%AB%A0%94%9F%F0%9F%9F%A7%90%A0%F0%F0%AB%F0%A4%AB%9F%A4%A4%AB%A7%9F%F0%9F%F0%F0%A0%9F%90%9F%F0%A4%AB%94%9F%94%A7%AB%A0%90%9F%AB%F0%F0%9F%F0%F0%A4%A4%9F%A0%9F%A4%A4%90%9F%AB%F0%A7%9F%F0%94%F0%9F%F0%AB%F0%9F%A4%F0%AB%9F%AB%9F%A7%A0%9F%90%94%A4%F0%F0%F0%A0%F0%9F%F0%94%A4%A4%A7%F0%9F%AB%AB%90%9F%9F%9F%F0%A4%A4%A7%A0%9F%F0%94%9F%AB%9F%F0%F0%90%AB%E2%80%AE&รขโฌโ€น%69d=00%37%38%34%39%30%37%37%39%36%37%36%38%36%34&%00&%00%E2%80%AE&รขโฌโ€น%69d=00%31%31%37%32%31%38%31%30%32%39%32%39%37%34%30&%00&%00%E2%80%AE&รขโฌโ€นi%64=00%39%34%32%35%32%35%31%36%30%31%36%39%32%31&%00&%00%E6%0A%E6%E8%B4%20%89%89%AF%80%09%0D%80%80%0A%09%AF%B4%E8%0D%89%E6%80%20%E6%89%B4%20%AF%80%E6%E8%E6%09%89%0D%80%80%B4%0A%E8%89%E6%E6%AF%0D%20%0 9%89%89%E6%0A%AF%E8%B4%20%80%E6%0D%89%80%09%89%E8%AF%80%0A%E6%E6%80%89%0D%09%20%B4%E6%0A%B4%0D%E8%E6%89%89%09%80%AF%20%80%89%AF%0D%E6%B4%89%80%09%80%E8%20%0A%E6%E2%80%AE&รขโฌโ€น%69%64=00%31%33%36%30%33%38%34%35%39%37%34%36%38%34%34&%00&%00%E2%80%AE&รขโฌโ€น%69d=00%31%33%39%38%32%32%34%34%38%31%39%38%33%31%39&%00&%00%F0%9F%9F%9F%A4%90%94%9F%AB%F0%A0%A7%A4%F0%F0%AB%90%F0%9F%AB%A0%F0%94%A4%F0%9F%9F%9F%A7%F0%A4%AB%9F%A7%9F%9F%F0%AB%F0%94%F0%AB%9F%A4%A4%F0%A0%90%F0%94%A7%AB%9F%A0%F0%F0%9F%AB%F0%A4%9F%9F%A4%90%9F%90%F0%AB%9F%A7%AB%F0%F0%94%9F%F0%A4%9F%A4%A0%A0%A4%9F%A730%32%39%32%39%37%34%30&%00&%00%E2%80%AE&รขโฌโ€นi%64=00%39%34%32%35%32%35%31%36%30%31%36%39%32%31&%00&%00%E6%0A%E6%E8%B4%20%89%89%AF%80%09%0D%80%80%0A%09%AF%B4%E8%0D%89%E6%80%20%E6%89%B4%80%0A%89%E6%20%89%09%AF%E8%E6%80%0D%0D%B4%89%80%80%E8%09%AF%20%E6%89%0A%E6%0D%E6%09%E8%80%0A%89%89%20%B4%E6%80%AF%0A%B4%09%89%80%E6%89%E6%0D%E8%20%AF%80%20%80%80%E8%B4%0A%0D%09%E6%89%E6%AF%89%20%80%B4%89%89%0D%80%E6%0A%E8%AF%E6%09%E6%0D%89%09%0A%B4%80%20%E6%80%AF%89%E8%0A%E6%89%89%E8%0D%20%B4%E6%09%80%AF%80%AF%80%89%0A%E6%0D%E6%20%09%E8%B4%80%89%E6%80%20%0A%09%AF%E6%89%0D%89%E8%80%B4%80%AF%0D%B4%89%E6%E6%09%0A%20%80%E8%89%80%89%AF%89%20%E8%80%0D%0A%09%E6%E6%B4%E2%80%AE&รขโฌโ€น%69%64=00%37%30%37%31%33%32%34%34%36%39%35%37%34%31&%00&%00%BF%C2%80%EF%8B%E2%A0%BB%80%8F%E2%A0%8B%C2%BF%8F%80%80%E2%EF%E2%BB%E2%8F%BF%EF%BB%80%E2%8B%A0%80%C2%80%8F%BF%A0%8B%80%BB%E2%E2%C2%EF%80%EF%8F%BF%8B%BB%E2%A130%32%39%32%39%37%34%30&%00&%00%E2%80%AE&รขโฌโ€นi%64=00%39%34%32%35%32%35%31%36%30%31%36%39%32%31&%00&%00%E6%0A%E6%E8%B4%20%89%89%AF%80%09%0D%80%80%0A%09%AF%B4%E8%0D%89%E6%80%20%E6%89%B4%80%0A%89%E6%20%89%09%AF%E8%E6%80%0D%0D%B4%89%80%80%E8%09%AF%20%E6%89%0A%E6%0D%E6%09%E8%80%0A%89%89%20%B4%E6%80%AF%0A%B4%09%89%80%E6%89%E6%0D%E8%20%AF%80%20%80%80%E8%B4%0A%0D%09%E6%89%E6%AF%89%20%80%B4%89%89%0D%80%E6%0A%E8%AF%E6%09%E6%0D%89%09%0A%B4%80%20%E6%80%AF%89%E8%0A%E6%89%89%E8%0D%20%B4%E6%09%80%AF%80%AF%80%89%0A%E6%0D%E6%20%09%E8%B4%80%89%E6%80%20%0A%09%AF%E6%89%0D%89%E8%80%B4%80%AF%0D%B4%89%E6%E6%09%0A%20%80%E8%89%80%89%AF%89%20%E8%80%0D%0A%09%E6%E6%B4%E2%80%AE&รขโฌโ€น%69%64=00%37%30%37%31%33%32%34%34%36%39%35%37%34%31&%00&%00%BF%C2%80%EF%8B%E2%A0%BB%80%8F%E2%A0%8B%C2%BF%8F%80%80%E2%EF%E2%BB%E2%8F%BF%EF%BB%80%E2%8B%A0%80%C2%80%8F%BF%A0%8B%80%BB%E2%E2%C2%EF%80%EF%8F%BF%8B%BB%E2%                    A1%3 3
=Mโ€ฎ&i%64=%37%32%30%33%34%31%32%30%35%34%37%38%39%37%26%69%64%3D%31%31%37%38%37%31%31%39%36%33%33%30%32%36%38%26%61%73%73%65%74%6e%61%6d%65%3D%68%0D%62%38%31%69%37%63%76%73%31%0A%64%72%36%33%65%70%34%6D%C3%6C%79%74%35%67%6B%66%30%71%75%32%77%6E%B1%6A%7A%78%6F%61%39%33%6E%70%38%63%66%68%6A%6D%61%6F%62%7A%39%36%30%31%74%0A%76%67%75%65%78%71%69%34%B1%77%31%32%79%C3%64%35%6C%73%0D%72%6B%37%64%31%38%72%35%6C%6D%33%77%63%B1%65%37%32%76%0A%6F%6E%69%7A%79%6A%0D%70%31%74%30%C3%6B%36โ€%73%34%78%62%75%39%71%66%68%61%67%63%35%64%71%6C%6E%76%68%0D%33%72%7A%6B%67%31%6D%31%74%73%C3%69%79%36%65%77%30%70%0A%34%32%75%39%6A%61%37%78%B1%38%6F%62%66 %26%69%64%3D%31%33%37%35%35%35%38%33%39%34%38%30%37%33%38%26%61%73%73%65%74%6e%61%6d%65%3D%35%68%7A%38%76%61%79%67%33%73%74%39%32%36%6A%69%62%30%77%0D%34%63%65%75%37%72%6F%31%B1%6E%78%64%70%6D%6C%66%31%6B%C3%0A%71%37%65%64%66%73%71%67%31%6B%0A%62%6F%6E%39%68%6A%75%31%32%34%33%61%38%70%72%0D%76%30%36%B1%35%79%C3%63%69%74%6D%78%7A%6C%77%B1%39%65%30%67%64%78%0A%37%74%36%71%C3%73%62%6F%6E%31%72%79%77%32%70%6C%7A%76%0D%35%31%6B%34%38%61%6D%33%6A%75%63%66%68%69%6D%70%B1%76%63%0A%61%6B%73%37%6A%C3%71%39%74%67%0D%30%75%38%72%77%31%65%7A%35%6E%32%64%36%33%6F%69%6C%34%78%68%62%79%31%66&i%64=%31%31%32%30%35%32%39%39%38%32%34%34%36%30%33&%6D%39%36%74%67%76%37%6E%66%6C%33%70%31%7A%79%35%63%6B%71%32%78%61%69%62%0A%B1%31%34%0D%73%72%30%38%68%65%77%75%6F%64%C3%6A%75%70%74%79%61%78%6E%31%B1%0A%6D%64%31%7A%30%63%38%6F%76%67%72%6A%6C%33%0D%37%65%6B%69%68%32%34%35%C3%36%71%62%77%39%73%66
=Fโ€ฎ%A4%9F%F0%9F%94%F0%9F%F0%AB% AB%F0%90%9F%9F% F0%F0%A7%F0%A4%A4%F0%9F%90%AB%9F%AB%94%A0%9F%F0%A4%9F%F0%F0%A4%90%A7%9F%F0%AB%AB%94%A0%9F%AB%A7%9F%9F%9F%A4%F0%90%F0%A0%A4%F0%9F%F0%AB%94%94%A7%F0%A4%9F%9F%F0%A4%AB%F0%A0%9F%9F%90%AB%F0%E2%80%AE&รขโฌโ€น%69d=00%39%38%32%35%35%31%31%31%30%35%31%32%37%33&%00&%00%E2%80%AE&รขโฌโ€น%69d=00%39%34%36%34%31%31%32%35%35%36%32%36%32%34&%00&%00%A7%A4%AB%F0%9F%F0%AB%9F%9F%90%F0%A4%9F%A0%94%F0%94%F0%F0%9F%A4%9F%AB%A7%A4%A0%90%F0%9F%AB%9F%F0%9F%F0%9F%9F%F0%94%A4%ABโ€%A7%90%A0%F0%F0%9F%AB%A4%A0%F0%9F%F0%9F%F0%AB%A7%90%9F%9F%AB%A4%F0%A4%94%9F%F0%A0%F0%F0%9F%9F%F0%AB%A4%AB%A4%94%9F%A7%90%F0%9F%A7%A4%A4%9F%AB%90%F0%AB%94%9F%F0%A0%F0%9F%AB%94%AB%9F%A7%A4%A0%90%F0%9F%F0%A4%F0%9F%F0%9F%9F%F0%F0%94%9F%AB%A7%F0%9F%A4%90%F0%A0%A4%9F%AB%9F%9F%A7%94%F0%A0%F0%F0%9F%9F%AB%F0%A4%90%AB%A4%9F%94%9F%F0%F0%AB%A7%A4%A4%A0%AB%9F%90%F0%F0%9F%A4%AB%AB%A7%F0%9F%A4%9F%F0%90%A0%9F%F0%9F%94%F0%F0%F0%AB%A7%A0%AB%90%F0%F0%9F%94%9F%A4%9F%A4%9F%A7%9F%A4%F0%F0%9F%9F%F0%AB%AB%A0%94%90%9F%F0%A4%90%94%A4%A0%AB%9F%A4%F0%F0%F0%A7%9F%F0%AB%9F%9F%AB%90%F0%9F%F0%9F%A0%F0%9F%F0%A4%94%9F%AB%A4%A7%A4%9F%F0%F0%A4%9F%9F%9F%F0%94%90%F0%A7%AB% AB%A0%AB%AB%F0%A4%9F%F0%A4%9F%A7%F0%90%9F%9F%F0%94%A0%9F%A4%90%9F%A4%AB%F0%F0%AB%F0%9F%A7%9F%94%A0%F0%9F%9F%F0%A7%F0%A4%F0%AB%9F%9F%A0%90%94%AB%A4%F0%F0%A7%9F%9F%A0%F0%9F%F0%A4%AB%9F%F 0%94%AB%90%A4%E2%80%AE&รขโฌโ€น%69%64=00%38%38%32%38%38%36%36%39%33%34%36%39%36%34&%00&%00%BB%80%8B%EF%BF%E2%80%A0%8F%E2%C2%8F%E2%A0%BB%E2%EF%BF%C2%80%80%8B%E2%8B%BF%A0%80%80%BB%C2%EF%8F%E2%80%EF%80%BB%8B%E2%BF%8F%E2%C2%A0%C2%80%80%E2%8B%BF%EF%E2%BB%A0%8F%C2%BF%8F%BB%E2%EF%8B%A0%80%80%E2%80%BB%C2%E2%A0%8B%E2%EF%80%BF%8F%E2%E2%A0%BF%EF%8B%C2%BB%8F%80%80%A0%80%8B%8F%BF%80%E2%C2%E2%BB%EF%80%E2%80%BF%8B%BB%C2%E2%8F%A0%EF%BB%80%A0%EF%80%BF%8B%E2%E2%C2%8F%E2%80%AE&รขโฌโ€น%69%64=00%31%30%35%38%36%35%34%37%39%30%35%38%38%38%39&%00&%00%E2%80%AE&รขโฌ&%69%64=%39%37%32%35%34%36%38%39%31%36%30%30%37%35%26%69%64%3D%31%30%31%36%33%31%39%38%32%33%34%37%38%34%31%26%61%73%73%65%74%6e%61%6d%65%3D%39%77%65%79%6E%36%7A%0A%33%72%6A%6B%31%30%6C%C3%34%70%68%35%66%78%B1%6D%71%31%64%76%7"
JunkBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
-- ใส่ค่า Default Junk ให้ตามที่คุณขอมา
JunkBox.Text = "114870502995953" 
JunkBox.TextSize = 12
JunkBox.Font = Enum.Font.Code
JunkBox.BorderSizePixel = 0
JunkBox.TextYAlignment = Enum.TextYAlignment.Top
JunkBox.TextXAlignment = Enum.TextXAlignment.Left
JunkBox.Parent = MainFrame

local JunkCorner = Instance.new("UICorner")
JunkCorner.CornerRadius = UDim.new(0, 6)
JunkCorner.Parent = JunkBox

-- ปุ่มกดเปิดเพลง (Play Button)
local PlayBtn = Instance.new("TextButton")
PlayBtn.Name = "PlayBtn"
PlayBtn.Size = UDim2.new(1, -30, 0, 42)
PlayBtn.Position = UDim2.new(0, 15, 0, 180)
PlayBtn.BackgroundColor3 = Color3.fromRGB(235, 180, 50)
PlayBtn.TextColor3 = Color3.fromRGB(20, 20, 20)
PlayBtn.Text = "FIRE PLAYLOAD (เปิดเพลง)"
PlayBtn.TextSize = 14
PlayBtn.Font = Enum.Font.GothamBold
PlayBtn.BorderSizePixel = 0
PlayBtn.Parent = MainFrame

local PlayCorner = Instance.new("UICorner")
PlayCorner.CornerRadius = UDim.new(0, 6)
PlayCorner.Parent = PlayBtn

-- ปุ่มเปิด/ปิด UI ขนาดเล็ก (Toggle UI Button)
local ToggleGuiBtn = Instance.new("TextButton")
ToggleGuiBtn.Name = "ToggleGuiBtn"
ToggleGuiBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleGuiBtn.Position = UDim2.new(0, 10, 0.5, -25)
ToggleGuiBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ToggleGuiBtn.TextColor3 = Color3.fromRGB(235, 180, 50)
ToggleGuiBtn.Text = "เปิด"
ToggleGuiBtn.TextSize = 14
ToggleGuiBtn.Font = Enum.Font.GothamBold
ToggleGuiBtn.Visible = false
ToggleGuiBtn.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 25)
ToggleCorner.Parent = ToggleGuiBtn

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(235, 180, 50)
ToggleStroke.Thickness = 1.5
ToggleStroke.Parent = ToggleGuiBtn

--- ========================================== ---
-- [[ ระบบการทำงาน (LOGIC & SMOOTH TWEEN) ]] --
--- ========================================== ---

-- 1. ระบบปิด-เปิด UI แบบสมูท
CloseBtn.MouseButton1Click:Connect(function()
    MainFrame:TweenSize(UDim2.new(0, 320, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true, function()
        MainFrame.Visible = false
        ToggleGuiBtn.Visible = true
    end)
end)

ToggleGuiBtn.MouseButton1Click:Connect(function()
    ToggleGuiBtn.Visible = false
    MainFrame.Visible = true
    MainFrame:TweenSize(UDim2.new(0, 320, 0, 260), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
end)

-- 2. ระบบลากหน้าต่างได้อย่างอิสระแบบสมูท (Smooth Dragging)
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    local targetPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    TweenService:Create(MainFrame, TweenInfo.new(0.15, Enum.EasingStyle.OutQuad), {Position = targetPos}):Play()
end

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- 3. ระบบส่ง Payload + Junk ขยะหลอกเซิฟเวอร์ (FireServer)
PlayBtn.MouseButton1Click:Connect(function()
    local songID = SongIDBox.Text
    local junkData = JunkBox.Text
    
    -- ลบช่องว่างส่วนเกิน
    songID = string.gsub(songID, "%s+", "")
    
    if songID ~= "" then
        -- กดแล้วทำปุ่มยุบลงไปสมูทๆ เอฟเฟกต์ตอนกด
        TweenService:Create(PlayBtn, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Size = UDim2.new(1, -40, 0, 38), Position = UDim2.new(0, 20, 0, 182)}):Play()
        task.wait(0.1)
        TweenService:Create(PlayBtn, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Size = UDim2.new(1, -30, 0, 42), Position = UDim2.new(0, 15, 0, 180)}):Play()
        
        -- การรวมตัวแปรเพื่อสร้างสาย Payload ขยะหลอกเซิฟเวอร์
        -- โครงสร้าง: ไอดีหลอก(จากช่องJunk) จะอยู่บนสุด ต่อด้วย & และตามด้วยไอดีเพลงจริง
        local combinedPayload = junkData .. "&" .. songID
        
        -- กำหนด Arguments สำหรับส่งข้ามไปยัง Server
        local args = {
            [1] = "ToolMusicText",
            [2] = combinedPayload, -- ส่งก้อน Payload ที่รวมขยะผสมไอดีเพลงจริงไปที่นี่
            [4] = true
        }
        
        -- ค้นหารีโมทและทำการส่งข้อมูล (FireServer)
        local remote = game:GetService("ReplicatedStorage"):WaitForChild("RE", 5):WaitForChild("PlayerToolEvent", 5)
        if remote then
            remote:FireServer(unpack(args))
            print("[HON BYPASS] ส่ง Payload สำเร็จ: " .. combinedPayload)
        else
            warn("[HON BYPASS] ไม่พบ Remote Event ในเซิฟเวอร์นี้")
        end
    else
        -- ถ้าไม่ได้ใส่ไอดีเพลง จะทำปุ่มสั่นแจ้งเตือน
        local origPos = PlayBtn.Position
        TweenService:Create(PlayBtn, TweenInfo.new(0.05), {Position = origPos + UDim2.new(0, 5, 0, 0)}):Play() task.wait(0.05)
        TweenService:Create(PlayBtn, TweenInfo.new(0.05), {Position = origPos - UDim2.new(0, 5, 0, 0)}):Play() task.wait(0.05)
        TweenService:Create(PlayBtn, TweenInfo.new(0.05), {Position = origPos}):Play()
    end
end)
