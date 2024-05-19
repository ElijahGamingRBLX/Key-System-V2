local HWIDTable = loadstring(game:HttpGet("https://pastebin.com/raw/Cc44c3gQ"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i,v in pairs(HWIDTable) do
    if v == HWID then
        print("Hardware ID Passed, you can load the script now...")
        loadstring(game:HttpGet("your link"))()
    end
end
