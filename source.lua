-- GUI Codes:
-- https://xheptcofficial.gitbook.io/kavo-library/


-- Single Game/Universal Script Example:
-- https://pastebin.com/raw/ChQxPwYq


-- Multi-Game/Script Hub Example:
-- https://pastebin.com/raw/xPVv1zyx

-- BASEPLATE GAME SCRIPT
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CYPRUS v1", "Synapse")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewToggle("Super-Human", "Go super fast and jump super high", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

MainSection:NewButton("Admin Commands (FE)", "FE Admin Commands", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'), true))()
end)

--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewButton("Fly", "M key to toggle on/off", function()
    loadstring(game:HttpGet("https://pastebin.com/d09bsiXG"))() 
end)

PlayerSection:NewSlider("Walkspeed", "Edit your character's walkspeed", 500, 1, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jumppower", "Edit your character's jumppower", 350, 1, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset WS/JP", "Resets your speed and jump power to default", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

PlayerSection:NewToggle("Infinite Jumps", "Remove jump cooldown", function(state)
    if state then
        loadstring(game:HttpGet(("https://pastebin.com/pDy1Ru0J"), true))() 
    else
        print("Toggle Off")
    end
end)

--Other
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Chat Spoofer", "Lets you chat as other people", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/djBfk8Li'))()
end)

