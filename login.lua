function _debugCheck()
    if debug.getinfo(1) then
        gg.alert(" 🕵‍♀️ DEBUG DETECTED 👮‍♀️ ")
        os.exit()  
    end
end

function _a(_b,_c)
    _debugCheck()  
    local _d = luajava.bindClass("android.app.ActivityThread"):currentApplication():getApplicationContext()
    local _e = _d:getPackageManager()
    local _f, _g = pcall(function()
        return _e:getPackageInfo(_b, 0)
    end)
    if _f and _g then
        return _g.versionName == _c
    end
    return false
end

function checkEnvironment()
    if os.getenv("DEBUG") then
        gg.alert(" 🕵‍♀️ DEBUG DETECTED 👮‍♀️ ")
        os.exit()  
    end
end

function _a(_b,_c)
    checkEnvironment()
    local _d = luajava.bindClass("android.app.ActivityThread"):currentApplication():getApplicationContext()
    local _e = _d:getPackageManager()
    local _f, _g = pcall(function()
        return _e:getPackageInfo(_b, 0)
    end)
    if _f and _g then
        return _g.versionName == _c
    end
    return false
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
        os.exit()
    end
end

local packageName = "com.e1940b18a111686a"
local version = "2.0.6"
if not checkPackage(packageName, version) then
    showAlertDialog() -- Pastikan Anda mendefinisikan fungsi ini
    return
end

SecSc()

API = gg.makeRequest("https://raw.githubusercontent.com/Kztutorial99/UI2.5/refs/heads/main/main.lua").content
if not API then
    gg.alert("Check Your Internet Connection")
else
    pcall(load(API))
end