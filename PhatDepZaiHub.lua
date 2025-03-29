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
        -- i will add my code farm level (will coming soon)

    end
})

AddButton(Tab1o, {
    Name = "Farm Bone",
    Callback = function()
        -- Add the script or function for Farm Bone here
        v486:OnChanged(function(v571)
        _G.AutoBone = v571;
        if (v571 == false) then
            wait();
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
            wait();
        end
    end);
    v17.ToggleBone:SetValue(false);
    local v487 = CFrame.new(- 9515.75, 174.8521728515625, 6079.40625);
    spawn(function()
        while wait() do
            if _G.AutoBone then
                pcall(function()
                    local v894 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
                    if not string.find(v894, "Demonic Soul") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                    end
                    if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
                        Tween(v487);
                        if ((v487.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
                        end
                    elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
                            for v1661, v1662 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v1662:FindFirstChild("HumanoidRootPart") and v1662:FindFirstChild("Humanoid") and (v1662.Humanoid.Health > 0)) then
                                    if ((v1662.Name == "Reborn Skeleton") or (v1662.Name == "Living Zombie") or (v1662.Name == "Demonic Soul") or (v1662.Name == "Posessed Mummy")) then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                            repeat
                                                wait(_G.Fast_Delay);
                                                AttackNoCoolDown();
                                                AutoHaki();
                                                bringmob = true;
                                                EquipTool(SelectWeapon);
                                                Tween(v1662.HumanoidRootPart.CFrame * Pos);
                                                v1662.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                                v1662.HumanoidRootPart.Transparency = 1;
                                                v1662.Humanoid.JumpPower = 0;
                                                v1662.Humanoid.WalkSpeed = 0;
                                                v1662.HumanoidRootPart.CanCollide = false;
                                                FarmPos = v1662.HumanoidRootPart.CFrame;
                                                MonFarm = v1662.Name;
                                            until not _G.AutoBone or (v1662.Humanoid.Health <= 0) or not v1662.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                                            bringmob = false;
                                        end
                                    end
                                end
                            end
                        else
                        end
                    end
                end);
            end
        end
    end);
    local v488 = CFrame.new(- 9515.75, 174.8521728515625, 6079.40625);
    spawn(function()
        while wait() do
            if _G.AutoBoneNoQuest then
                pcall(function()
                    Tween(v488);
                    if ((v488.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
                    end
                    if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
                        for v1436, v1437 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v1437:FindFirstChild("HumanoidRootPart") and v1437:FindFirstChild("Humanoid") and (v1437.Humanoid.Health > 0)) then
                                if ((v1437.Name == "Reborn Skeleton") or (v1437.Name == "Living Zombie") or (v1437.Name == "Demonic Soul") or (v1437.Name == "Posessed Mummy")) then
                                    repeat
                                        wait(_G.Fast_Delay);
                                        AttackNoCoolDown();
                                        AutoHaki();
                                        bringmob = true;
                                        EquipTool(SelectWeapon);
                                        Tween(v1437.HumanoidRootPart.CFrame * Pos);
                                        v1437.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        v1437.HumanoidRootPart.Transparency = 1;
                                        v1437.Humanoid.JumpPower = 0;
                                        v1437.Humanoid.WalkSpeed = 0;
                                        v1437.HumanoidRootPart.CanCollide = false;
                                        FarmPos = v1437.HumanoidRootPart.CFrame;
                                        MonFarm = v1437.Name;
                                    until not _G.AutoBoneNoQuest or (v1437.Humanoid.Health <= 0) or not v1437.Parent
                                end
                            end
                        end
                    end
                end);
            end
        end
    end);
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
