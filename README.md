if game.PlaceId == 7453798168 then
    local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
        local Win = lib:Window("Youtube Sim X")
        local u = Win:Tab("Credits")
        local Autofarm = Win:Tab("AutoFarm")
        local Misc = Win:Tab("Misc")
        local Teleport = Win:Tab("Teleports")
        local Buy = Win:Tab("AutoBuy")
        
        
        game:service'StarterGui':SetCore("SendNotification", {
            Title = "Credits";
            Text = "made by raver";
             })
            
            game:service'StarterGui':SetCore("SendNotification", {
            Title = "Credits";
            Text = "https://discord.gg/8BZn7GGw5k";
             })
    
        Misc:Slider("Walk Speed", 0, 250, 16, function(v)
        
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
        
        end)
        
        Misc:Slider("Jump Power", 0, 250, 16, function(v)
        
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
            
            end)
        
            Misc:Button("Anti Afk", function()
        
            local VirtualUser=game:service'VirtualUser'
                game:service'Players'.LocalPlayer.Idled:connect(function()
                warn("anti-afk")
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            
        
                end)
                game:service'StarterGui':SetCore("SendNotification", {
                    Title = "Anti-Afk";
                    Text = "is now on :)";
                })
            end)
            Misc:Toggle("Noclip", false, function(v)
            
                if state then
        
                    noclip = false
                    game:GetService('RunService').Stepped:connect(function()
                    if noclip then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                    end)
        
                else
        
                    noclip = not noclip
        game:GetService('RunService').Stepped:connect(function()
        if noclip then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
        end)
                print(t)
                end
            end)
        
        
    
        
        u:Button("")
    
        
       u:Button("https://discord.gg/8BZn7GGw5k",function()
    setclipboard("https://discord.gg/8BZn7GGw5k")
    lib:Notification("Notification", "MY CREDITS", "Okay!")
end)
    
        u:Button("")
    
        
         Autofarm:Label("----- if crashes rejoin -----")
        
        
        Autofarm:Toggle("AutoFarm (NEED AUTOCLICKER/EDIT ON)", false, function (t)
        getgenv().Premade = t
        while wait() do
            if getgenv().Premade == true then
                game:GetService("ReplicatedStorage").ToUpgrades:FireServer()
                wait(2)
                game:GetService("ReplicatedStorage").EquipCamera:InvokeServer()
                wait(2)
                print("hi")
                wait(30)
                game:GetService("ReplicatedStorage").EquipCamera:InvokeServer()
                wait("2")
                game:GetService("ReplicatedStorage").toStudio:FireServer()
                game:GetService("ReplicatedStorage").storage:InvokeServer()
                wait(2)
                game:GetService("Players").LocalPlayer.PlayerGui.sit.ImageButton.float.click:Fire()
                wait(2)
                print("hi Again")
                 wait(40)
            end
        end
        end)
        Autofarm:Label("----- Manual Farm -----")
        Autofarm:Toggle("AutoClick", false, function (t)
            getgenv().Automoney = t
            while wait() do
                if getgenv().Automoney == true then
                    pcall(function ()
                        local N=game:GetService("VirtualInputManager")
N:SendKeyEvent(true,"E",false,game) 
            end)
                end
                end
        end)


        Autofarm:Toggle("AutoEdit", false, function (t)
            getgenv().Automoney2 = t
            while wait() do
                if getgenv().Automoney2 == true then
                    pcall(function ()
                        local N=game:GetService("VirtualInputManager")
 :SendKeyEvent(true,"E",false,game) 
            end)
                end
                end
        end)

        Autofarm:Label("----- Event -----")


        Autofarm:Toggle("AutoCollectCandy", false, function(t)
            getgenv().AutoResearch = t
            while wait() do
                if getgenv().AutoResearch == true then
                    pcall(function ()
                        for _,v in pairs(game:GetService("Workspace").Candy.Candy:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                            end
                       end
                end)
                end
                end
        end)
        
        Autofarm:Label("----- Event -----")


        Autofarm:Button("ClickHereThenCollectGems", function(t)
           game.Players.LocalPlayer.PlayerGui.GEMS:remove()
             end)
    
        
        
        Autofarm:Toggle("AutoCollectGems", false, function(t)
            getgenv().AutoFill = t
            while wait() do
                if getgenv().AutoFill == true then
                    pcall(function ()
                        game:GetService("ReplicatedStorage").giveGems:FireServer()
                end)
                end
                end
        end)
    

        Misc:Button("EquipCam", function()
            game:GetService("ReplicatedStorage").EquipCamera:InvokeServer()
        end)
        
        

        
        
        Teleport:Button("Studio", function()
        game:GetService("ReplicatedStorage").toStudio:FireServer()
        end)
        
        
                Teleport:Button("Upgrades", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30.544219970703, 342.34875488281, -83.42911529541)
                end)
    
                    Teleport:Button("ChestShop", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.081580162048, 342.09744262695, -117.45066833496)
        end)


                    Teleport:Button("ItemShop", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11.15170955658, 341.64096069336, -50.57266998291)
        end)





        Buy:Label("----- BuyChests -----")
        Buy:Label("----- 1 Room -----")


        Buy:Toggle("1", false, function(t)
            getgenv().a1 = t
            while wait() do
                if getgenv().a1 == true then
                    pcall(function ()
                        local args = { [1] = 1 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)

        Buy:Toggle("2", false, function(t)
            getgenv().a2 = t
            while wait() do
                if getgenv().a2 == true then
                    pcall(function ()
                        local args = { [1] = 2 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("3", false, function(t)
            getgenv().a3 = t
            while wait() do
                if getgenv().a3 == true then
                    pcall(function ()
                        local args = { [1] = 3 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("4", false, function(t)
            getgenv().a4 = t
            while wait() do
                if getgenv().a4 == true then
                    pcall(function ()
                        local args = { [1] = 4 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("5", false, function(t)
            getgenv().a5 = t
            while wait() do
                if getgenv().a5 == true then
                    pcall(function ()
                        local args = { [1] = 5 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Label("----- 2 Room -----")


        Buy:Toggle("1", false, function(t)
            getgenv().a6 = t
            while wait() do
                if getgenv().a6 == true then
                    pcall(function ()
                        local args = { [1] = 6 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("2", false, function(t)
            getgenv().a7 = t
            while wait() do
                if getgenv().a7 == true then
                    pcall(function ()
                        local args = { [1] = 7 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)

        Buy:Toggle("3", false, function(t)
            getgenv().a8 = t
            while wait() do
                if getgenv().a8 == true then
                    pcall(function ()
                        local args = { [1] = 8 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("4", false, function(t)
            getgenv().a9 = t
            while wait() do
                if getgenv().a9 == true then
                    pcall(function ()
                        local args = { [1] = 9 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("5", false, function(t)
            getgenv().a10 = t
            while wait() do
                if getgenv().a10 == true then
                    pcall(function ()
                        local args = { [1] = 10 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)



        Buy:Label("----- 3 Room -----")

        Buy:Toggle("1", false, function(t)
            getgenv().a11 = t
            while wait() do
                if getgenv().a11 == true then
                    pcall(function ()
                        local args = { [1] = 11 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("2", false, function(t)
            getgenv().a12 = t
            while wait() do
                if getgenv().a12 == true then
                    pcall(function ()
                        local args = { [1] = 12 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("3", false, function(t)
            getgenv().a1 = t
            while wait() do
                if getgenv().a13 == true then
                    pcall(function ()
                        local args = { [1] = 13 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("4", false, function(t)
            getgenv().a14 = t
            while wait() do
                if getgenv().a14 == true then
                    pcall(function ()
                        local args = { [1] = 14 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)



        Buy:Toggle("5", false, function(t)
            getgenv().a15 = t
            while wait() do
                if getgenv().a15 == true then
                    pcall(function ()
                        local args = { [1] = 15 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)





        Buy:Label("----- 4 Room -----")



        Buy:Toggle("1", false, function(t)
            getgenv().a16 = t
            while wait() do
                if getgenv().a16 == true then
                    pcall(function ()
                        local args = { [1] = 16 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)




        Buy:Toggle("2", false, function(t)
            getgenv().a17 = t
            while wait() do
                if getgenv().a17 == true then
                    pcall(function ()
                        local args = { [1] = 17 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)



        Buy:Toggle("3", false, function(t)
            getgenv().a18 = t
            while wait() do
                if getgenv().a18 == true then
                    pcall(function ()
                        local args = { [1] = 18 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)




        Buy:Toggle("4", false, function(t)
            getgenv().a19 = t
            while wait() do
                if getgenv().a19 == true then
                    pcall(function ()
                        local args = { [1] = 19 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)



        Buy:Toggle("5", false, function(t)
            getgenv().a20 = t
            while wait() do
                if getgenv().a20 == true then
                    pcall(function ()
                        local args = { [1] = 20 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Label("----- 5 Room -----")

        Buy:Toggle("1", false, function(t)
            getgenv().a21 = t
            while wait() do
                if getgenv().a21 == true then
                    pcall(function ()
                        local args = { [1] = 21 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("2", false, function(t)
            getgenv().a22 = t
            while wait() do
                if getgenv().a22 == true then
                    pcall(function ()
                        local args = { [1] = 22 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("3", false, function(t)
            getgenv().a23 = t
            while wait() do
                if getgenv().a23 == true then
                    pcall(function ()
                        local args = { [1] = 23 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)



        Buy:Toggle("4", false, function(t)
            getgenv().a24 = t
            while wait() do
                if getgenv().a24 == true then
                    pcall(function ()
                        local args = { [1] = 24 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("5", false, function(t)
            getgenv().a25 = t
            while wait() do
                if getgenv().a25 == true then
                    pcall(function ()
                        local args = { [1] = 25 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)



        Buy:Label("----- 6 Room -----")




        Buy:Toggle("1", false, function(t)
            getgenv().a26 = t
            while wait() do
                if getgenv().a26 == true then
                    pcall(function ()
                        local args = { [1] = 26 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("2", false, function(t)
            getgenv().a27 = t
            while wait() do
                if getgenv().a27 == true then
                    pcall(function ()
                        local args = { [1] = 27 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)



        Buy:Toggle("3", false, function(t)
            getgenv().a28 = t
            while wait() do
                if getgenv().a28 == true then
                    pcall(function ()
                        local args = { [1] = 28 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("4", false, function(t)
            getgenv().a29 = t
            while wait() do
                if getgenv().a29 == true then
                    pcall(function ()
                        local args = { [1] = 29 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)


        Buy:Toggle("5", false, function(t)
            getgenv().a30 = t
            while wait() do
                if getgenv().a30 == true then
                    pcall(function ()
                        local args = { [1] = 30 }
                        game:GetService("ReplicatedStorage").requestSpin:FireServer(unpack(args))
                end)
                end
                end
        end)








    else
    game.Players.LocalPlayer:Kick("Game Not Supported :(")
    end
