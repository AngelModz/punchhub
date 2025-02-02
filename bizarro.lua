local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local window = Rayfield:CreateWindow({
    Name = "UniversalHub",
    LoadingTitle = "Carregando...",
    LoadingSubtitle = "Aguarde um momento",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Rayfield",
        FileName = "Config"
    }
})

local tab = window:CreateTab("Scripts", 4483362458)

tab:CreateToggle({
    Name = "Auto clicker",
    CurrentValue = false,
    Callback = function(value)
        if value then
            _G.running = true
            spawn(function()
                while _G.running do
                    game:GetService("ReplicatedStorage").Events.DamageIncreaseOnClickEvent:FireServer()
                    task.wait(0.1)
                end
            end)
        else
            _G.running = false
            spawn(function()
                while _G.running do
                    game:GetService("ReplicatedStorage").Events.DamageIncreaseOnClickEvent:FireServer()
                    task.wait(0.1)
                end
            end)
        end
    end
})

tab:CreateButton({
    Name = "Anti AFK",
    Callback = function()
        wait(0.5)
        local ba = Instance.new("ScreenGui")
        local ca = Instance.new("TextLabel")
        local da = Instance.new("Frame")
        local _b = Instance.new("TextLabel")
        local ab = Instance.new("TextLabel")

        ba.Parent = game.CoreGui
        ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        ca.Parent = ba
        ca.Active = true
        ca.BackgroundColor3 = Color3.new(0.176, 0.176, 0.176)
        ca.Draggable = true
        ca.Position = UDim2.new(0.698, 0, 0.098, 0)
        ca.Size = UDim2.new(0, 370, 0, 52)
        ca.Font = Enum.Font.SourceSansSemibold
        ca.Text = "Anti AFK"
        ca.TextColor3 = Color3.new(0, 1, 1)
        ca.TextSize = 22

        da.Parent = ca
        da.BackgroundColor3 = Color3.new(0.196, 0.196, 0.196)
        da.Position = UDim2.new(0, 0, 1.019, 0)
        da.Size = UDim2.new(0, 370, 0, 107)

        _b.Parent = da
        _b.BackgroundColor3 = Color3.new(0.176, 0.176, 0.176)
        _b.Position = UDim2.new(0, 0, 0.8, 0)
        _b.Size = UDim2.new(0, 370, 0, 21)
        _b.Font = Enum.Font.Arial
        _b.Text = "Made by xxxxx?"
        _b.TextColor3 = Color3.new(0, 1, 1)
        _b.TextSize = 20

        ab.Parent = da
        ab.BackgroundColor3 = Color3.new(0.176, 0.176, 0.176)
        ab.Position = UDim2.new(0, 0, 0.158, 0)
        ab.Size = UDim2.new(0, 370, 0, 44)
        ab.Font = Enum.Font.ArialBold
        ab.Text = "Status: Active"
        ab.TextColor3 = Color3.new(0, 1, 1)
        ab.TextSize = 20

        local bb = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
            print("Roblox tentou te kickar, mas o Anti-AFK impediu!")
        end)
        ba:Destroy()
    end
})

tab:CreateButton({
    Name = "Dugeon farm",
    Callback = function()
        local scriptUrl = "https://raw.githubusercontent.com/LawrenceLud/Punch-Simulator/main/Punch%20Simulator.lua"
        local scriptCode = game:HttpGet(scriptUrl)
        
        loadstring(scriptCode)()
    end
})
