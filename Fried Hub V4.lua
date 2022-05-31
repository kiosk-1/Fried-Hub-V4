    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("FriedHub V4", "BloodTheme")

    -- Scripts
    local Scripts = Window:NewTab("Scripts")
    local ScriptsSection = Scripts:NewSection("Scripts")
    ScriptsSection:NewDropdown("Fatez Admin", "For Fatez Admin Press ; For Command Bar. Prefix is !", {"Fatez Admin"}, function(v)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua'))()
    end)

    ScriptsSection:NewDropdown("Eclipse Hub", "Hub to hack in most games!", {"Eclipse Hub"}, function(v)
        local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
        end)

        ScriptsSection:NewDropdown("Ragdoll Engine", "Ragdoll Engine GUI", {"Ragdoll Engine"}, function(v)
            getgenv().autoexecuteinrejoin_shop = true --/auto re execute in rejoin
            getgenv().openclouse = "p" --/keybin close / open
            loadstring(game:HttpGet("https://raw.githubusercontent.com/martinelcrac/cryptonichub/main/cryptonicnewui.lua"))()
            end)

            ScriptsSection:NewDropdown("Ctrl-Click Teleport", "Press Ctrl and Left Click", {"Ctrl-Click Teleport"}, function(v)
                local Plr = game:GetService("Players").LocalPlayer local Mouse = Plr:GetMouse()

                Mouse.Button1Down:connect( function() if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end if not Mouse.Target then return end Plr.Character:MoveTo(Mouse.Hit.p) end )
                end)

                ScriptsSection:NewDropdown("Horror Mansion", "Exploit for horror mansion.", {"Horror Mansion"}, function(v)
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/Loadstringy3hAix9vkqTu", true))()
                    end)

                    ScriptsSection:NewDropdown("Prison Life Admin", "Prison life admin", {"Prison Life Admin"}, function(v)
                        loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
                        end)
    
    
    -- Player
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Walkspeed", "This will change your speed.", 500, 16, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
        PlayerSection:NewSlider("JumpPower", "This will change your jump.", 500, 50, function(v) -- 500 (MaxValue) | 0 (MinValue)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    PlayerSection:NewSlider("Fov", "Changes your camera view.", 120, 70, function(v) -- 500 (MaxValue) | 0 (MinValue)
        workspace.CurrentCamera.FieldOfView = v
    end)

    --Reanimation
    local Reanimation = Window:NewTab("Reanimation")
    local ReanimationSection = Reanimation:NewSection("Reanimation")
    ReanimationSection:NewDropdown("Reanimate", "Script To Reanimate", {"Reanimate"}, function(v)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/kiosk-1/WaterHubReanimation/main/WaterHub.lua'))()
        end)

    --Reanimation Scripts
    local Reanimation = Window:NewTab("ReanimationScripts")
    local ReanimationScriptSection = Reanimation:NewSection("Reanimation Scripts")
    ReanimationScriptSection:NewDropdown("Gale Fighter", "Gale Fighter", {"Gale Fighter"}, function(v)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/kiosk-1/WaterHubReanimation/main/Gale%20Fighter.lua'))()
        end)


            ReanimationScriptSection:NewDropdown("Fling", "When you go to someone they get flung to space.", {"Fling"}, function(v)
            loadstring(game:HttpGet('print("LOL! FLUNG!!!")'))()
            end)

            -- GODMODE
            local GodMode = Window:NewTab("God Mode")
            local GodModeSection = GodMode:NewSection("GodMode")
            GodModeSection:NewDropdown("GodMode", "This allows you to have god mode enabled", {"GodMode"}, function(v)
                addcmd('god',{},function(args, speaker)
                    local Cam = workspace.CurrentCamera
                    local Pos, Char = Cam.CFrame, speaker.Character
                    local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
                    local nHuman = Human.Clone(Human)
                    nHuman.Parent, speaker.Character = Char, nil
                    nHuman.SetStateEnabled(nHuman, 15, false)
                    nHuman.SetStateEnabled(nHuman, 1, false)
                    nHuman.SetStateEnabled(nHuman, 0, false)
                    nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
                    speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
                    nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                    local Script = Char.FindFirstChild(Char, "Animate")
                    if Script then
                        Script.Disabled = true
                        wait()
                        Script.Disabled = false
                    end
                    nHuman.Health = nHuman.MaxHealth
                end)()
            end)
