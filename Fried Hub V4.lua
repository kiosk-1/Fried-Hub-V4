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
