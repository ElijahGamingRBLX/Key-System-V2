local HWIDTable = loadstring(game:HttpGet("https://pastebin.com/raw/wInYdg4f"))() -- Fetch HWID list
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

local isWhitelisted = false -- Initialize as not whitelisted

for i, v in pairs(HWIDTable) do
    if v == HWID then
        isWhitelisted = true
        break -- Stop searching if found
    end
end

if isWhitelisted then
    print("Hardware ID Passed, loading the script now...")
    -- Load your main script here (replace 'YourScriptLink' with the actual link)
    loadstring(game:HttpGet("YourScriptLink"))()
else
    warn("Hardware ID not found. Access denied.")
end
