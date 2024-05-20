local HWIDTable = loadstring(game:HttpGet("https://pastebin.com/raw/wInYdg4f"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

print(HWIDTable) -- Prints the fetched table for debugging

for i, v in pairs(HWIDTable) do
    if v == HWID then
        print("Hardware ID Passed, you can load the script now...")
        -- The rest of your script would go here
    end
end
