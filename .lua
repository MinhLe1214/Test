local UiMakeLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhLe1214/menu/refs/heads/main/.lua"))()

-- Tạo thông báo
local Notify = UiMakeLib:MakeNotify({
    ["Title"] = "Night Hub",
    ["Description"] = "Notification",
    ["Color"] = Color3.fromRGB(75, 0, 130),
    ["Content"] = "Chào đây là script của Night",
    ["Time"] = 1,
    ["Delay"] = 10
})

-- Tạo cửa sổ UI
local Window = UiMakeLib:MakeGui({
    ["NameHub"] = "Night Hub",
    ["Description"] = "Phiên bản V1",
    ["Color"] = Color3.fromRGB(75, 0, 130),
    ["Logo Player"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..game:GetService("Players").LocalPlayer.UserId .."&width=420&height=420&format=png",
    ["Name Player"] = tostring(game:GetService("Players").LocalPlayer.Name),
    ["Tab Width"] = 140
})

-- Tạo các tab
local Tab1 = Window:CreateTab({
    ["Name"] = "Hack Chính",
    ["Icon"] = "rbxassetid://7733960981"
})
local Tab2 = Window:CreateTab({
    ["Name"] = "Cài đặt",
    ["Icon"] = "rbxassetid://7734053495"
})

-- Thêm các phần vào tab
local Section = Tab1:AddSection("Mở Các Loại Hack")
local Paragraph = Section:AddParagraph({
    ["Title"] = "Paragraph",
    ["Content"] = "This is a Paragraph"
})

-- Toggle
local Toggle = Section:AddToggle({
    ["Title"]= "Toggle",
    ["Content"] = "This is a Toggle",
    ["Default"] = false,
    ["Multi"] = true,
    ["Options"] = {"Option 1", "Option 2"},
    ["Selecting"] = {"Option 1"},
    ["Callback"] = function(Value) 
        print(Value)
    end
})

-- Các nút (đã đổi tên để không trùng lặp)
local MenuGangtenButton = Section:AddButton({
    ["Title"] = "Menu Gangten Hub",
    ["Content"] = "Hỗ trợ máy yếu",
    ["Icon"] = "rbxassetid://16932740082",
    ["Callback"] = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a5c3af437cd698d64379cf75cacb9281.lua"))()
    end
})

local WazureButton = Section:AddButton({
    ["Title"] = "W azure",
    ["Content"] = "Hỗ trợ máy yếu(có cái Đb lỗi r)",
    ["Icon"] = "rbxassetid://101558177339422",
    ["Callback"] = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end
})

local FixLagButton = Section:AddButton({
    ["Title"] = "Fix lag",
    ["Content"] = "Hỗ trợ máy yếu",
    ["Icon"] = "rbxassetid://16932740082",
    ["Callback"] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})

local TweenService = game:GetService("TweenService")  -- Dịch vụ hoạt ảnh  
local uiOpen = true  -- UI mở ban đầu  
local Window = true -- Bình thường bạn sẽ tạo và thiết lập Window của bạn ở đây  

local function closeUI()  
    local tween = TweenService:Create(Window, TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 1, 0)})  -- Bạn có thể điều chỉnh kích thước tùy ý  
    tween:Play()  
    tween.Completed:Wait()  
    Window.Visible = false  -- Ẩn UI sau khi hoạt hình hoàn tất  
    uiOpen = false  
end  

local function openUI()  
    Window.Visible = true  -- Hiển thị UI trước khi hoạt ảnh  
    local tween = TweenService:Create(Window, TweenInfo.new(0.5), {Size = UDim2.new(0.5, 0, 0.5, 0)})  -- Điều chỉnh kích thước nếu cần  
    tween:Play()  
    uiOpen = true  
end  

local function toggleUI()  
    if uiOpen then  
        closeUI()  
    else  
        openUI()  
    end  
end  

local UserInputService = game:GetService("UserInputService")  

UserInputService.InputBegan:Connect(function(input, gameProcessed)  
    if gameProcessed then return end  

    if input.KeyCode == Enum.KeyCode.F4 then  
        toggleUI()  
    end  
end)  

local ToggleButton = Window:CreateTab({  
    ["Name"] = "Đóng & mở",  
    ["Icon"] = "rbxassetid://7734053495"  
})  

local SectionToggle = ToggleButton:AddSection("Toggle UI")  
local ToggleUIButton = SectionToggle:AddButton({  
    ["Title"] = "Đóng/Mở UI",  
    ["Content"] = "Nhấn để đóng hoặc mở UI",  
    ["Icon"] = "rbxassetid://16932740082",  
    ["Callback"] = function()  
        toggleUI()  
    end  
}) 
