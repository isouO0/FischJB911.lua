local r = (syn and syn.request) or http_request or request
local h = game:GetService("HttpService")

local code = [[
print("test")
]]

local res = r({
    Url = "https://j-229c.onrender.com/api/obfuscate",
    Method = "POST",
    Headers = {["Content-Type"] = "application/json"},
    Body = h:JSONEncode({script = code})
})

setclipboard(h:JSONDecode(res.Body).obfuscated)
