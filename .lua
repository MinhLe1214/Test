local UiMakeLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhLe1214/menu/refs/heads/main/.lua"))()

-- Tạo thông báo
local Notify = UiMakeLib:MakeNotify({
    ["Title"] = "Night Hub",
    ["Description"] = "Notification",
    ["Color"] = Color3.fromRGB(75, 0, 130),
    ["Content"] = "Welcome to Fluriore UI",
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
    ["Content"] = "Hỗ trợ máy yếu(có cái Đb)",
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

-- Slider, Input, Dropdown...

-- Biến kiểm tra trạng thái của UI (mở hay đóng)
local uiOpen = true  -- Ban đầu UI mở

-- Hàm đóng UI
local function closeUI()
    Window:Hide()  -- Ẩn UI
    uiOpen = false  -- Đánh dấu UI đã đóng
end

-- Hàm mở UI
local function openUI()
    Window:Show()  -- Hiển thị UI
    uiOpen = true  -- Đánh dấu UI đã mở
end

-- Hàm chuyển đổi UI (đóng/mở)
local function toggleUI()
    if uiOpen then
        closeUI()  -- Nếu UI đang mở thì đóng
    else
        openUI()  -- Nếu UI đang đóng thì mở
    end
end

-- Lắng nghe sự kiện nhấn phím để đóng/mở UI
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end  -- Nếu sự kiện đã được trò chơi xử lý, bỏ qua

    if input.KeyCode == Enum.KeyCode.End then  -- Khi nhấn phím F1
        toggleUI()  -- Chuyển đổi trạng thái UI
    end
end)

-- Bạn cũng có thể thêm một nút "Đóng/Mở UI" trong giao diện nếu muốn
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
        toggleUI()  -- Khi nhấn vào nút, chuyển đổi trạng thái UI
    end
})
