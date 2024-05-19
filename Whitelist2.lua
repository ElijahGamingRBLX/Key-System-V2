local HWIDTable = loadstring(game:HttpGet("your link"))()
local HWID = game:GetService("RbxAnalyticsService"):GetCilentId()

for i,v in pairs(HWIDTable) do
    if v == HWID then
        print("Hardware ID Passed, you can load the script now...")
        loadstring(game:HttpGet("your link"))()
    end
end
