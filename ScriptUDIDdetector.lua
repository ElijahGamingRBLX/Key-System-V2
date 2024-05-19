local http_request = syn and syn.request or request;
local udidPaste = loadstring(game:HttpGet("https://pastebin.com/raw/bj1rWFGB"))() 

-- ... (rest of the code for fetching body and decoded remains the same)

local udid = game:GetService("DeviceIdService"):GetDeviceId() -- Get the UDID

for i, v in pairs(udidPaste) do
    if v == udid then
        print("Whitelisted")
    else
        print("Not whitelisted")
    end
end

setclipboard(udid) 
