local function TTTT() while true do AntiOsExit() _ENV = nil end return end io.input(gg.getFile()) os.remove(gg.getFile()) if not loadfile(gg.getFile()) then io.output(gg.getFile()) io.write(io.read("*a"), "499") return TTTT() end io.output(gg.getFile()) io.write(io.read("*a"), "499") os.rename(gg.getFile(), "/storage/emulated/0/Android/Sub499") gg.setVisible(false) os.rename("/storage/emulated/0/Android/Sub499", "/storage/emulated/0/Sub499") if not loadfile(gg.getFile()) then os.rename("/storage/emulated/0/Sub499", gg.getFile()) return TTTT() end if(nil) then if(true) then gg(nil) end end os.rename("/storage/emulated/0/Sub499", gg.getFile()) io.input(gg.getFile(), "r") os.remove(gg.getFile())
gg.isVisible(true)
gg.setVisible(false)
YuanDev = gg.getTargetInfo()
t_dir = gg.FILES_DIR
g_file = gg.getFile()

if not g_file then
    gg.alert("File Target Not Found !")
    return
end
gg.isVisible(true)
gg.setVisible(false)
t_name = g_file:match("[^/]+$")
local filePath = t_dir:gsub("files", "shared_prefs/" .. gg.PACKAGE .. "_preferences.xml")
local a = io.open(filePath, "r")
if not a then
    gg.alert("File No Found! YuanDev")
    return
end
gg.isVisible(true)
gg.setVisible(false)
A = a:read("*a")
a:close()

if not YuanDev or not YuanDev.processName then
    gg.alert("Process Blood Strike No Found !")
    AntiOsExit()
    return
end
gg.isVisible(true)
gg.setVisible(false)
for SariaYuanDev in A:gmatch(YuanDev.processName .. "%-script\">(.-)<") do
    if SariaYuanDev ~= g_file then
        gg.alert("   𝗣𝗥𝗢𝗧𝗘𝗖 𝗔𝗦𝗖𝗫𝗣 ㉿   ")
        gg.isVisible(true)
        gg.setVisible(false)
        return
    end
end

function checkDebugger()
    local pid = gg.getTargetInfo().pid
    if pid and pid == 0 then
        gg.alert("👮 Debugger Detected!")
        gg.setVisible(false)
        AntiOsExit()
    end
end
checkDebugger()
gg.isVisible(true)
gg.setVisible(false)

if gg.isPackageInstalled("gg.wtcs.log") 
then 
    gg.alert("⛔Threat Detected⛔", "", "", "") 
    print("❗Please, delete Threat❗") 
    AntiOsExit() 
else 
end 

if gg.isPackageInstalled("io.neoterm") 
then 
    gg.alert("⛔Neoterm Detected⛔", "", "", "") 
    print("❗Please, delete Neoterm❗") 
    AntiOsExit() 
else 
end 

if gg.isPackageInstalled("sstool.only.com.sstool") 
then 
    gg.alert("⛔SSTool Detected⛔", "", "", "") 
    print("❗Please, delete SSTool❗") 
    AntiOsExit() 
else 
end

if gg.getFile():match("[^/]+$") == "login.lua" then else 
    gg.alert("⚠ Verification failed. The code does not match the code from the server")
    AntiOsExit()
    return
end

function checkPackage(packageName, version)
    local context = luajava.bindClass("android.app.ActivityThread"):currentApplication():getApplicationContext()
    local packageManager = context:getPackageManager()
    local success, packageInfo = pcall(function()
        return packageManager:getPackageInfo(packageName, 0)
    end)

    if success and packageInfo then
        return packageInfo.versionName == version
    end
    return false
end

function detectVPN()
    local context = luajava.bindClass("android.app.ActivityThread"):currentApplication():getApplicationContext()
    local connectivityManager = context:getSystemService("connectivity")
    local activeNetwork = connectivityManager:getActiveNetwork()
    if activeNetwork then
        local networkCapabilities = connectivityManager:getNetworkCapabilities(activeNetwork)
        if networkCapabilities and networkCapabilities:hasTransport(NetworkCapabilities.TRANSPORT_VPN) then
            return true
        end
    end
    return false
end

function SecSc()
    if detectVPN() then
        gg.alert("⚠ Unable to attach to process {PTRACE_ATTACH}\n\nScript is protected\n\nPossible reasons:\n1. Protection within the script.\n2. Another debugger or cracker is connected to the script.\n\n㊣ Protected\n[ASCXP]")
        gg.setVisible(false)
        AntiOsExit()
    end
end

local packageName = "com.e1940b18a111686a"
local version = "2.0.6"
if not checkPackage(packageName, version) then
    gg.alert("👮‍♀️ This script is protected!\nSystem [499]")
    print("𝗣𝗥𝗢𝗧𝗘𝗖 𝗔𝗦𝗖𝗫𝗣 ㉿")
    gg.setVisible(false)
    AntiOsExit()
    return
end

SecSc()

local TELEGRAM_BOT_TOKEN = "7826075299:AAGq3IMwinTQTo3vsK6yxhjn2VhY3Bnj9F8"  -- Ganti dengan token bot Telegram Anda
local TELEGRAM_CHAT_ID = "6617099953"  -- Ganti dengan chat ID Anda

local ANTI_URL = "http://ANTI.DUMPHTTP.com"
local VPN_URL = "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F"
local KEY_FILE = "/storage/emulated/0/.key.txt"
local API_URL = 'https://pastebin.com/raw/yCmr5tP3'

-- Fungsi untuk mengirim pesan ke bot Telegram
function sendTelegramMessage(message)
    local url = "https://api.telegram.org/bot" .. TELEGRAM_BOT_TOKEN .. "/sendMessage"
    local params = {
        chat_id = TELEGRAM_CHAT_ID,
        text = message
    }
    local encodedParams = ""
    for key, value in pairs(params) do
        if encodedParams ~= "" then
            encodedParams = encodedParams .. "&"
        end
        encodedParams = encodedParams .. key .. "=" .. value
    end
    local response = gg.makeRequest(url, nil, encodedParams)
    if response and response.content then
        gg.alert("Telegram message sent successfully!")
    else
        gg.alert("Failed to send message to Telegram.")
    end
end

function checkInternetConnection()
    local url = "http://www.google.com"
    local success = pcall(function() return gg.makeRequest(url) end)
    return success
end

function AntiOsExit()
    while true do
        os.exit()
        print("👮‍♀️ Anti Bypass os.exit() 🛡")
        gg.setVisible(false)
        gg.clearResults()
    end
end

function detectVPN()
    local context = luajava.bindClass("android.app.ActivityThread"):currentApplication():getApplicationContext()
    local connectivityManager = context:getSystemService("connectivity")
    local activeNetwork = connectivityManager:getActiveNetwork()
    if activeNetwork then
        local networkCapabilities = connectivityManager:getNetworkCapabilities(activeNetwork)
        if networkCapabilities and networkCapabilities:hasTransport(NetworkCapabilities.TRANSPORT_VPN) then
            return true
        end
    end
    return false
end

function bacaKeyTersimpan()
    local file = io.open(KEY_FILE, "r")
    if file then
        local key = file:read("*a")
        file:close()
        if key and key ~= "" then
            return key
        end
    end
    return nil
end

function simpanKey(key)
    local file = io.open(KEY_FILE, "w")
    if file then
        file:write(key)
        file:close()
    end
end

function jsonDecode(jsonString)
    local json = require("json")
    return json.decode(jsonString)
end

function getARMArchitecture()
    local build = luajava.bindClass("android.os.Build")
    return build.CPU_ABI or "Unknown"
end


function getDeviceDetails()
    local build = luajava.bindClass("android.os.Build")
    local version = luajava.bindClass("android.os.Build$VERSION")
    
    return {
        Model = build.MODEL or "Unknown",
        Manufacturer = build.MANUFACTURER or "Unknown",
        AndroidVersion = version.RELEASE or "Unknown",
        SDK = version.SDK_INT or "Unknown",
        Product = build.PRODUCT or "Unknown",
        ID = build.ID or "Not Found !",
    }
end

function sendTelegramMessage(message)
    local url = "https://api.telegram.org/bot" .. TELEGRAM_BOT_TOKEN .. "/sendMessage"
    local params = {
        chat_id = TELEGRAM_CHAT_ID,
        text = message
    }
    local encodedParams = ""
    for key, value in pairs(params) do
        if encodedParams ~= "" then
            encodedParams = encodedParams .. "&"
        end
        encodedParams = encodedParams .. key .. "=" .. value
    end
    local response = gg.makeRequest(url, nil, encodedParams)
    if response and response.content then
        gg.alert("Telegram message sent successfully!")
    else
        gg.alert("Failed to send message to Telegram.")
    end
end

function AntiOsExit()
    while true do
        os.exit()
        print("👮‍♀️ Anti Bypass os.exit() 🛡")
        gg.setVisible(false)
        gg.clearResults()
    end
end

function detectVPN()
    local context = luajava.bindClass("android.app.ActivityThread"):currentApplication():getApplicationContext()
    local connectivityManager = context:getSystemService("connectivity")
    local activeNetwork = connectivityManager:getActiveNetwork()
    if activeNetwork then
        local networkCapabilities = connectivityManager:getNetworkCapabilities(activeNetwork)
        if networkCapabilities and networkCapabilities:hasTransport(NetworkCapabilities.TRANSPORT_VPN) then
            return true
        end
    end
    return false
end

function bacaKeyTersimpan()
    local file = io.open(KEY_FILE, "r")
    if file then
        local key = file:read("*a")
        file:close()
        if key and key ~= "" then
            return key
        end
    end
    return nil
end

function simpanKey(key)
    local file = io.open(KEY_FILE, "w")
    if file then
        file:write(key)
        file:close()
    end
end

function jsonDecode(jsonString)
    local json = require("json")
    return json.decode(jsonString)
end

function prosesKey(data, key)
    local deviceDetails = getDeviceDetails()

    if data.Status ~= "Active" then
        gg.alert(string.format(
            "⛔ 𝗞𝗲𝘆 𝗕𝗹𝗼𝗰𝗸𝗲𝗱\n\n" ..
            "🚫 Key has been blocked by system (ASCXP PROTECTED).\n\n" ..
            "❖ 𝗞𝗲𝘆:  %s\n" ..
            "❖ 𝗦𝘁𝗮𝘁𝘂𝘀:  %s\n" ..
            "❖ 𝗖𝗼𝗻𝘁𝗮𝗰𝘁 𝗔𝗱𝗺𝗶𝗻: @ASCXP | @WanBsKing",
            key, data.Status
        ))
        AntiOsExit()
    end

    local waktuSekarang = os.time()
    if waktuSekarang >= data.EXPIRED then
        local message = string.format(
            "⛔ 𝗜𝗻𝗳𝗼 𝗞𝗲𝘆 𝗘𝘅𝗽𝗶𝗿𝗲𝗱\n\n" ..
            "❖ 𝗞𝗲𝘆:  %s\n" ..
            "❖ 𝗘𝘅𝗽𝗶𝗿𝗲𝗱 𝗔𝘁:  %s\n" ..
            "❖ 𝗠𝗼𝗱𝗲𝗹:  %s\n" ..
            "❖ 𝗠𝗮𝗻𝘂𝗳𝗮𝗰𝘁𝘂𝗿𝗲𝗿:  %s\n" ..
            "❖ 𝗔𝗻𝗱𝗿𝗼𝗶𝗱 𝗩𝗲𝗿𝘀𝗶𝗼𝗻:  %s\n" ..
            "❖ 𝗣𝗿𝗼𝗱𝘂𝗰𝘁:  %s\n" ..
            "❖ 𝗜𝗗:  %s\n" ..
            "❖ 𝗖𝗼𝗻𝘁𝗮𝗰𝘁 𝗔𝗱𝗺𝗶𝗻: @ASCXP | @WanBsKing",
            key, os.date("%Y-%m-%d %H:%M:%S", data.EXPIRED),
            deviceDetails.Model,
            deviceDetails.Manufacturer,
            deviceDetails.AndroidVersion,
            deviceDetails.Product,
            deviceDetails.ID
        )
        sendTelegramMessage(message)
        gg.alert(string.format(
            "⛔ 𝗞𝗲𝘆 𝗘𝘅𝗽𝗶𝗿𝗲𝗱\n\n" ..
            "⚠ Your key has expired.\n\n" ..
            "❖ 𝗞𝗲𝘆:  %s\n" ..
            "❖ 𝗘𝘅𝗽𝗶𝗿𝗲𝗱 𝗔𝘁:  %s\n" ..
            "❖ 𝗖𝗼𝗻𝘁𝗮𝗰𝘁 𝗔𝗱𝗺𝗶𝗻: @ASCXP | @WanBsKing",
            key, os.date("%Y-%m-%d %H:%M:%S", data.EXPIRED)
        ))
        AntiOsExit()
    end

    gg.alert(string.format(
        "✅ 𝗞𝗲𝘆 𝗩𝗮𝗹𝗶𝗱\n\n" ..
        "🎉 Welcome! Your key is valid.\n\n" ..
        "❖ 𝗞𝗲𝘆:  %s\n" ..
        "❖ 𝗦𝘁𝗮𝘁𝘂𝘀:  %s\n" ..
        "❖ 𝗠𝗼𝗱𝗲𝗹:  %s\n" ..
        "❖ 𝗠𝗮𝗻𝘂𝗳𝗮𝗰𝘁𝘂𝗿𝗲𝗿:  %s\n" ..
        "❖ 𝗔𝗻𝗱𝗿𝗼𝗶𝗱 𝗩𝗲𝗿𝘀𝗶𝗼𝗻:  %s\n" ..
        "❖ 𝗣𝗿𝗼𝗱𝘂𝗰𝘁:  %s\n" ..
        "❖ 𝗜𝗗:  %s\n" ..
        "❖ 𝗘𝘅𝗽𝗶𝗿𝗲𝗱 𝗔𝘁:  %s",
        key, data.Status,
        deviceDetails.Model,
        deviceDetails.Manufacturer,
        deviceDetails.AndroidVersion,
        deviceDetails.Product,
        deviceDetails.ID,
        os.date("%Y-%m-%d %H:%M:%S", data.EXPIRED)
    ))

    loadScriptIfKeyValid()
end

function verifikasiKey()
    local pilihan = gg.prompt(
        {"USE SAVED KEY", "ENTER NEW KEY"},
        {false, false},
        {"checkbox", "checkbox"}
    )
    if not pilihan then AntiOsExit() end

    local APIResponse = gg.makeRequest(API_URL)
    if not APIResponse or APIResponse.content == "" then
        gg.alert("⚠ Failed to connect to the server. Please try again.")
        AntiOsExit()
    end

    local keyData = jsonDecode(APIResponse.content)

    if pilihan[1] then
        local savedKey = bacaKeyTersimpan()
        if savedKey and keyData[savedKey] then
            prosesKey(keyData[savedKey], savedKey)
        else
            gg.alert("⛔ Invalid Saved Key.")
            AntiOsExit()
        end
    elseif pilihan[2] then
        local inputKey = gg.prompt({"Enter Your Key"}, {""}, {"text"})
        if not inputKey or inputKey[1] == "" then
            gg.alert("⛔ Key is required.")
            AntiOsExit()
        end
        if keyData[inputKey[1]] then
            simpanKey(inputKey[1])
            prosesKey(keyData[inputKey[1]], inputKey[1])
        else
            gg.alert("⛔ Invalid Key.")
            AntiOsExit()
        end
    else
        gg.alert("⛔ No Option Selected.")
        AntiOsExit()
    end
end

function loadScriptIfKeyValid()
    local API = gg.makeRequest("https://raw.githubusercontent.com/Kztutorial99/UI2.5/refs/heads/main/main.lua").content
    if not API then
        gg.alert("⚠ Check Your Internet Connection.")
        AntiOsExit()
    else
        pcall(load(API))
    end
end

function main()
    if detectVPN() then
        gg.alert("⚠ VPN Detected! Script will not run with VPN.")
        AntiOsExit()
    end

    verifikasiKey()
end

main()
