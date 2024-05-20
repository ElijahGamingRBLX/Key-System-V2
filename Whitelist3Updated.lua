local HWIDTable = loadstring(game:HttpGet("https://pastebin.com/raw/wInYdg4f"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i, v in pairs(HWIDTable) do
    if v == HWID then
        print("Hardware ID Passed, you can load the script now...")
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50 
        -- The rest of your script would go here
    end
end
