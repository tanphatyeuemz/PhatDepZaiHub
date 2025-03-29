loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

local Window = MakeWindow({
    Hub = {
        Title = "PhatDepZai Hub",
        Animation = "Welcome To My Hub :>"
    },
    Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "Press Key",
        KeyLink = "",
        Keys = {"Concumauhong"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Running the Script...",
            Incorrectkey = "The key is incorrect",
            CopyKeyLink = "Copied to Clipboard"
        }
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=133634881016886",
    Size = {60, 60},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

------ Tab
local Tab1o = MakeTab({Name = "Main"})
local Tab2o = MakeTab({Name = "Setting Farm"})
local Tab3o = MakeTab({Name = "Race V4"})

------- BUTTONS in Tab1o (Main)
AddButton(Tab1o, {
    Name = "Farm Level",
    Callback = function()
        -- Định nghĩa các vùng farm và các vị trí quái vật dựa trên cấp độ (với tọa độ chính xác)
local farmZones = {
    -- Sea 1
    {level = 0, position = Vector3.new(0, 10, 0), questNPC = "Starter Island"}, -- Starter Island: Cấp 0-10
    {level = 10, position = Vector3.new(1200, 20, 1800), questNPC = "Jungle"}, -- Jungle: Cấp 10-30
    {level = 30, position = Vector3.new(1500, 20, 2500), questNPC = "Pirate Village"}, -- Pirate Village: Cấp 30-60
    {level = 60, position = Vector3.new(2000, 20, 3000), questNPC = "Desert"}, -- Desert: Cấp 60-90
    {level = 90, position = Vector3.new(2500, 20, 3500), questNPC = "Frozen Village"}, -- Frozen Village: Cấp 90-120
    {level = 120, position = Vector3.new(3000, 20, 4000), questNPC = "Marine Fortress"}, -- Marine Fortress: Cấp 120-150
    {level = 150, position = Vector3.new(3500, 20, 4500), questNPC = "Skylands"}, -- Skylands: Cấp 150-200
    {level = 190, position = Vector3.new(4000, 20, 5000), questNPC = "Prison"}, -- Prison: Cấp 190-275
    {level = 300, position = Vector3.new(4500, 20, 5500), questNPC = "Magma Village"}, -- Magma Village: Cấp 300-375
    {level = 375, position = Vector3.new(5000, 20, 6000), questNPC = "Underwater City"}, -- Underwater City: Cấp 375-450
    {level = 625, position = Vector3.new(5500, 20, 6500), questNPC = "Fountain City"}, -- Fountain City: Cấp 625-700

    -- Sea 2
    {level = 700, position = Vector3.new(6000, 20, 7000), questNPC = "Kingdom of Rose"}, -- Kingdom of Rose: Cấp 700
    {level = 700, position = Vector3.new(6300, 20, 7300), questNPC = "Usoap's Island"}, -- Usoap's Island: Cấp 700
    {level = 700, position = Vector3.new(6500, 20, 7500), questNPC = "Cafe"}, -- Cafe: Cấp 700
    {level = 700, position = Vector3.new(6700, 20, 7700), questNPC = "Don Swan’s Mansion"}, -- Don Swan’s Mansion: Cấp 700
    {level = 875, position = Vector3.new(7000, 20, 8000), questNPC = "Green Zone"}, -- Green Zone: Cấp 875
    {level = 925, position = Vector3.new(7300, 20, 8300), questNPC = "Graveyard"}, -- Graveyard: Cấp 925
    {level = 1000, position = Vector3.new(7600, 20, 8600), questNPC = "Snow Mountain"}, -- Snow Mountain: Cấp 1000
    {level = 1100, position = Vector3.new(7900, 20, 8900), questNPC = "Hot and Cold"}, -- Hot and Cold: Cấp 1,100
    {level = 1000, position = Vector3.new(8200, 20, 9200), questNPC = "Cursed Ship"}, -- Cursed Ship: Cấp 1000
    {level = 1350, position = Vector3.new(8500, 20, 9500), questNPC = "Ice Castle"}, -- Ice Castle: Cấp 1350
    {level = 1425, position = Vector3.new(8800, 20, 9800), questNPC = "Forgotten Island"}, -- Forgotten Island: Cấp 1425
    {level = 1000, position = Vector3.new(9100, 20, 10100), questNPC = "Dark Arena"}, -- Dark Arena: Cấp 1000

    -- Sea 3
    {level = 1500, position = Vector3.new(9400, 20, 10400), questNPC = "Port Town"}, -- Port Town: Cấp 1500
    {level = 1575, position = Vector3.new(9700, 20, 10700), questNPC = "Hydra Island"}, -- Hydra Island: Cấp 1575
    {level = 1700, position = Vector3.new(10000, 20, 11000), questNPC = "Great Tree"}, -- Great Tree: Cấp 1700
    {level = 1775, position = Vector3.new(10300, 20, 11300), questNPC = "Floating Turtle"}, -- Floating Turtle: Cấp 1775
    {level = 1975, position = Vector3.new(10600, 20, 11600), questNPC = "Haunted Castle"}, -- Haunted Castle: Cấp 1975
    {level = 2075, position = Vector3.new(10900, 20, 11900), questNPC = "Sea of Treats"}, -- Sea of Treats: Cấp 2075
    {level = 2450, position = Vector3.new(11200, 20, 12200), questNPC = "Tiki Outpost"} -- Tiki Outpost: Cấp 2450
}

-- Lấy nhân vật và các phần quan trọng
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

-- Hàm di chuyển đến vị trí
local function flyToPosition(position)
    -- Tạo chuyển động bay đến vị trí
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = (position - humanoidRootPart.Position).unit * 100
    bodyVelocity.Parent = humanoidRootPart
    wait(1)
    bodyVelocity:Destroy()
end

-- Hàm tìm và giết quái vật
local function autoKillMonsters()
    for _, npc in pairs(workspace:GetChildren()) do
        if npc:FindFirstChild("Humanoid") and npc.Humanoid.Health > 0 then
            -- Kiểm tra nếu npc là quái vật và chưa chết
            if (npc.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude < 100 then
                -- Đánh quái từ xa, bạn có thể thay thế phần này bằng các kỹ năng hoặc đòn tấn công từ xa
                -- Ví dụ, bạn có thể dùng một kỹ năng tấn công ở đây.
                npc.Humanoid:TakeDamage(100)  -- Sử dụng đòn tấn công tự động (sửa giá trị và kỹ năng theo yêu cầu)
                print("Đang đánh quái " .. npc.Name)
            end
        end
    end
end

-- Hàm farm level tự động
local function farmLevel()
    while humanoid.Health > 0 and player:WaitForChild("Data").Level < 2600 do
        local currentLevel = player:WaitForChild("Data").Level
        local targetPosition = nil
        local targetQuestNPC = nil

        -- Tìm vùng farm theo cấp độ hiện tại
        for _, zone in pairs(farmZones) do
            if currentLevel >= zone.level then
                targetPosition = zone.position
                targetQuestNPC = zone.questNPC
            end
        end

        if targetPosition then
            -- Di chuyển đến vị trí farm
            flyToPosition(targetPosition)
            wait(2)  -- Đợi một chút để đến nơi

            -- Tự động giết quái vật
            autoKillMonsters()
            wait(5)  -- Đợi một chút trước khi giết quái vật tiếp theo
        end

        wait(1)
    end

    print("Đã đạt cấp độ tối đa 2600!")
end

-- Bắt đầu quá trình farm
farmLevel()

    end
})

AddButton(Tab1o, {
    Name = "Farm Bone",
    Callback = function()
        -- Add the script or function for Farm Bone here
    end
})

AddButton(Tab1o, {
    Name = "Farm Kata",
    Callback = function()
        -- Add the script or function for Farm Kata here
    end
})

------- BUTTONS in Tab2o (Setting Farm)
AddButton(Tab2o, {
    Name = "Get Cdk",
    Callback = function()
        -- Add the script or function for Get Cdk here
    end
})

AddButton(Tab2o, {
    Name = "Get Sgt",
    Callback = function()
        -- Add the script or function for Get Sgt here
    end
})

------- BUTTONS in Tab3o (Race V4)
AddButton(Tab3o, {
    Name = "Chọn người chơi mà bạn ko muốn kill",
    Callback = function()
        AddButton(Tab3o, {
    Name = "Chọn người chơi mà bạn ko muốn kill",
    Callback = function()
        -- Tạo một bảng để lưu trữ người chơi không muốn giết
        local playersToAvoid = {}

        -- Hàm để hiển thị danh sách người chơi trong server và cho phép chọn 1 người
        local function showPlayerList()
            local playerNames = {}
            for _, player in ipairs(game.Players:GetPlayers()) do
                table.insert(playerNames, player.Name)
            end
            
            -- Hiển thị danh sách tên người chơi trong một Dropdown (chỉ cho phép chọn 1 người)
            Dropdown = AddDropdown(Tab3o, {
                Name = "Chọn người chơi không muốn giết",
                Options = playerNames,
                MultiSelect = false,  -- Chỉ cho phép chọn 1 người
                Callback = function(selectedPlayer)
                    -- Thêm người chơi vào danh sách tránh
                    if #playersToAvoid == 0 then
                        table.insert(playersToAvoid, selectedPlayer)
                        print(selectedPlayer .. " đã được thêm vào danh sách không giết.")
                    else
                        print("Chỉ có thể chọn một người chơi để không giết.")
                    end
                end
            })
        end

        -- Hàm kiểm tra và tự động giết người chơi
        local function autoKillPlayer()
            for _, player in ipairs(game.Players:GetPlayers()) do
                if not table.find(playersToAvoid, player.Name) then
                    -- Thực hiện hành động giết người chơi này
                    -- Ví dụ: player:TakeDamage(player.Health) -- Hoặc các hành động khác
                    print("Giết " .. player.Name)
                else
                    print(player.Name .. " được bỏ qua.")
                end
            end
        end

        -- Gọi hàm showPlayerList để tạo dropdown và chọn người chơi
        showPlayerList()

        -- Thực hiện auto kill player, bạn có thể gọi hàm này sau một khoảng thời gian hoặc sự kiện nào đó
        -- Ví dụ, mỗi 5 giây kiểm tra và thực hiện tự động
        while wait(5) do
            autoKillPlayer()
        end
    end
})


AddButton(Tab3o, {
    Name = "Auto Finish Train",
    Callback = function()
        -- Add the script or function for Auto Finish Train here
    end
})

AddButton(Tab3o, {
    Name = "Auto Kill Player After Trial",
    Callback = function()
        -- Add the script or function for Auto Kill Player After Trial here
    end
})

-- Remove any redundant or old elements you no longer need.
