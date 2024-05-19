local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "Your logged in as "..Player.Name.."!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "Hello"
_G.KeyInput = "string"

function MakeScriptHub()
    loadstring(game:HttpGet("your link"))()
end

function CorrectKeyNotification()
   OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "You Have Entered The Correct Key,",
	Image = "rbxassetid://4483345998",
	Time = 5
  })
end

function IncorrectKeyNotification()
   OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "You Have Entered The Incorrect Key!",
	Image = "rbxassetid://4483345998",
	Time = 5
  })
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Input Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
	      _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
        end
  	end    
})
