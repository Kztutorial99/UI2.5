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
    gg.alert("👮‍♀️ This script is protected!\nSystem [409]")
    print("ASC PROTEC")
    os.exit()
    return
end

SecSc()

local _ENV=(function()
local pairs=pairs

local string_char=string.char
local table_concat=table.concat
local _NZF=0
local Char={}
for i=0,255 do
    Char[i]=string.char(i)
    Char[string.char(i)]=i
end
local string_char=function(Tab1)
    for i,k in pairs(Tab1) do
        if type(k)=="number" then
            Tab1[i]=Char[k]
        end
    end
    return table_concat(Tab1)
end

local Dec = function(_Tab,Max)
    for i=1,#_Tab do
        _Tab[i]=(_Tab[i]~(Char[Max]-i))
    end
    return string_char(_Tab)
end

gg.setVisible(false)
luajava.setFloatingWindowHide(true)
local material3 = require 'material3'
local context=material3:getContext()
import'com.google.android.material.slider.Slider'
import'android.content.res.ColorStateList'
import'com.google.android.material.dialog.MaterialAlertDialogBuilder'
import'com.google.android.material.card.MaterialCardView'
if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
function getTimeStamp(t)
local str = os.date("%H:%M:%S",t)
return str
end
colorvs={}
changan = {} huiz = function() end
window = context:getSystemService("window") 

function file_exists(filepath)
  local file = io.open(filepath, "r")
  if file then
    io.close(file)
    return true
  else
    return false
  end
end

function download_file(filename, url)
  local filepath = "/sdcard/小宇全防/data/" .. filename
  if file_exists(filepath) then
    gg.toast("文件已存在: " .. filename)
  else
    gg.toast("文件不存在, 正在下载: " .. filename)
    download(url, filepath)
    gg.toast("文件已下载: " .. filename)
  end
end

function get_url(conf_file)
  if conf_file == ".a.conf" then return "https://image.rlyun.fun/down.php/3b20f788bd135b174d9e3e373e519b36.conf"
  elseif conf_file == ".a¢.conf" then return "https://image.rlyun.fun/down.php/af405d89c675eb7164757faf303a0686.conf"
  elseif conf_file == ".b.conf" then return "https://image.rlyun.fun/down.php/488ffc5d15b549dbb0c275578a233e02.conf"
  elseif conf_file == ".b¢.conf" then return "https://image.rlyun.fun/down.php/1ac462e07041b86e9d61aac18e40b9e0.conf"
  elseif conf_file == ".c.conf" then return "https://image.rlyun.fun/down.php/e97e798083948d2bf9b0ed909a5f4e08.conf"
  elseif conf_file == ".c¢.conf" then return "https://image.rlyun.fun/down.php/808668f32a88174d9f8691e3500f0420.conf"
  elseif conf_file == ".d.conf" then return "https://image.rlyun.fun/down.php/c933dff0d3fd25b1d27477894bf276b9.conf"
  elseif conf_file == ".d¢.conf" then return "https://image.rlyun.fun/down.php/9942f1d1b24858f4a0b6faf74608ef5b.conf"
  elseif conf_file == ".e.conf" then return "https://image.rlyun.fun/down.php/e18f057724d2fab858f34312c162f0cf.conf"
  elseif conf_file == ".e¢.conf" then return "https://image.rlyun.fun/down.php/e0959f8fd802719926f954ff4940e458.conf"
  elseif conf_file == ".f.conf" then return "https://image.rlyun.fun/down.php/cb0a8e884aca7a60de047194716dd686.conf"
  elseif conf_file == ".f¢.conf" then return "https://image.rlyun.fun/down.php/e0959f8fd802719926f954ff4940e458.conf"
  elseif conf_file == ".g.conf" then return "https://image.rlyun.fun/down.php/6ba673a70bcf953ed9842676cb75eecc.conf"
  elseif conf_file == ".g¢.conf" then return "https://image.rlyun.fun/down.php/45b5dd179e53fa790ecabf02c9955b5e.conf"
  elseif conf_file == ".h.conf" then return "https://image.rlyun.fun/down.php/768666ad3d1c1d12e31c361f79b8c587.conf"
  elseif conf_file == ".h¢.conf" then return "https://image.rlyun.fun/down.php/b7bdeabadd49d26771d8fd40af8bb4c1.conf"
  elseif conf_file == "flag.conf" then return "https://image.rlyun.fun/down.php/68934a3e9455fa72420237eb05902327.conf"
  else return nil end
end

function check_and_download_conf()
  local files = {".a.conf", ".a¢.conf", ".b.conf", ".b¢.conf", ".c.conf", ".c¢.conf", ".d.conf", ".d¢.conf", ".e.conf", ".e¢.conf", ".f.conf", ".f¢.conf", ".g.conf", ".g¢.conf", ".h.conf", ".h¢.conf", "flag.conf"}
  for _, file in ipairs(files) do
    local filepath = "/sdcard/小宇全防/data/" .. file
    if not file_exists(filepath) then
      local url = get_url(file)
      if url then
        gg.toast("文件 " .. file .. " 不存在, 正在下载.")
        download(url, filepath)
      else
        gg.toast("未找到下载链接: " .. file)
      end
    end
  end
end

function download_file(filename, url)
  local filepath = "/sdcard/小宇全防/小宇全防/" .. filename
  if file_exists(filepath) then
    gg.toast("文件已存在: " .. filename)
  else
    gg.toast("文件不存在, 正在下载: " .. filename)
    download(url, filepath)
    gg.toast("文件已下载: " .. filename)
  end
end

function check_and_download_mp3()
  local files = {
    {name = "snap-on.mp3", url = "https://image.rlyun.fun/view.php/170bb782737e402dd3bec0875ea87dd7.mp3"},
    {name = "ui-hide.mp3", url = "https://image.rlyun.fun/view.php/818f9370b4de19b8ba00448a2d0a409e.mp3"},
    {name = "ui-open.mp3", url = "https://image.rlyun.fun/view.php/c78e30e030b82503a7e282a09c90ae85.mp3"}
  }
  
  for _, file in ipairs(files) do
    local filepath = "/sdcard/小宇全防/sound/" .. file.name
    if not file_exists(filepath) then
      gg.toast("文件 " .. file.name .. " 不存在, 正在下载.")
      download(file.url, filepath)
    end
  end
end

function download_file(filename, url)
  local filepath = "/sdcard/小宇全防/assets/" .. filename
  if file_exists(filepath) then
    gg.toast("文件已存在: " .. filename)
  else
    gg.toast("文件不存在, 正在下载: " .. filename)
    download(url, filepath)
    gg.toast("文件已下载: " .. filename)
  end
end

function check_and_download_assets()
  local files = {
    {name = "devprof", url = "https://image.rlyun.fun/down.php/a187e3f552117dec4ce89c08dc3992c3."},
    {name = "Process", url = "https://image.rlyun.fun/down.php/bd1f946d08f9e4747e7dfdec6823e4f0."},
    {name = "Exit", url = "https://image.rlyun.fun/down.php/aae618e0964b637bdca98b94ee9faaf0."}
  }

  for _, file in ipairs(files) do
    local filepath = "/sdcard/小宇全防/assets/" .. file.name
    if not file_exists(filepath) then
      gg.toast("文件 " .. file.name .. " 不存在, 正在下载.")
      download(file.url, filepath)
    end
  end
end

check_and_download_assets()
check_and_download_mp3()
check_and_download_conf()


function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if file.length("/sdcard/小宇全防/"..tmp[1],false)<200 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download(tmp[2],"/sdcard/小宇全防/"..tmp[1])
end
end
ckimg = {
	{'hei_right','https://image.rlyun.fun/down.php/dfcc155180c66711a66a1c6540db5e03.'},
	{'opoback','https://image.rlyun.fun/down.php/40957bcc9387d24a7f3b3802a072982c.'},
	{'heir','https://image.rlyun.fun/down.php/1f8c38a24d8adda4f8f4f897ab2abfbd.'},
	{'heix','https://image.rlyun.fun/down.php/1631f943c3cad4fd0aee9e611638198e.'},
	{'lefttoplogo','https://image.rlyun.fun/view.php/b56997692a30cae16915655ab2271b38.png'},
	{'font.ttf','https://image.rlyun.fun/down.php/c2224a867dc42afa9f00a151a5333022.ttf'},
}
for i = 1,#ckimg do
checkimg(ckimg[i],i)
end
local Typeface = luajava.bindClass("android.graphics.Typeface")
local fontPath = '/sdcard/小宇全防/font.ttf'
local fontFile = luajava.newInstance("java.io.File", fontPath)
typeface= Typeface:createFromFile(fontFile)
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/小宇全防/"..ntxt) == false then
file.download(txt,"/sdcard/小宇全防/"..ntxt)
else
	if file.length("/sdcard/小宇全防/"..ntxt) <= 1 then
file.download(txt,"/sdcard/小宇全防/"..ntxt)
end
end
txt = "/sdcard/小宇全防/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/小宇全防/"..x)
end
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function getLayoutParams2()
LayoutParams2 = WindowManager.LayoutParams
layoutParams2 = luajava.new(LayoutParams2)
if (Build.VERSION.SDK_INT >= 26) then 
layoutParams2.type = LayoutParams2.TYPE_APPLICATION_OVERLAY
else
	layoutParams2.type = LayoutParams2.TYPE_PHONE
end

layoutParams2.format = PixelFormat.RGBA_8888 
layoutParams2.flags = LayoutParams2.FLAG_NOT_TOUCH_MODAL 
layoutParams2.gravity = Gravity.CENTER 
layoutParams2.width = LayoutParams2.WRAP_CONTENT 
layoutParams2.height = LayoutParams2.WRAP_CONTENT 

return layoutParams2
end
function topSelect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x22161616,0x22161616},30))
selector:addState({
	-android.R.attr.state_pressed
}, empty)
return selector
end
function getLayoutParams()
LayoutParams = WindowManager.LayoutParams
layoutParams = luajava.new(LayoutParams)
if (Build.VERSION.SDK_INT >= 26) then 
layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
else
	layoutParams.type = LayoutParams.TYPE_PHONE
end

layoutParams.format = PixelFormat.RGBA_8888 
layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL 
layoutParams.gravity = Gravity.TOP|Gravity.LEFT 
layoutParams.width = LayoutParams.WRAP_CONTENT 
layoutParams.height = LayoutParams.WRAP_CONTENT 

return layoutParams
end


显2=false
function 隐藏2()
显2=true
ckou:setVisibility(View.GONE)
if smalltype==1 then
	control2:setVisibility(View.GONE)
else
	smallwindow:setVisibility(View.GONE)
end
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false



if 显示==1 then
	ckou:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
else
	if smalltype==1 then
	control2:setVisibility(View.VISIBLE)
else
	smallwindow:setVisibility(View.VISIBLE)
end
	smallc:setVisibility(View.GONE)
	隐藏()
end
end
hanshu = function(v, event)
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
x = mainLayoutParams.x
y = mainLayoutParams.y
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
elseif Action == MotionEvent.ACTION_UP then
mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
	if 显示==0 and 显2==false then 隐藏2() end
end
if mainLayoutParams.x>=20 then
	if 显2==true then 显示2() end
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
if math.abs(event:getRawY()-RawY)>20 then return true end
if math.abs(event:getRawX()-RawX)>20 then return true end
end
end
function getCorner(gtvb1,gtvb3,gtvb4,gtvb5,g1,g2,g3,g4)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)
return jianbians
end
mainLayoutParams = getLayoutParams()

import("android.media.AudioManager")
audi = context:getSystemService("audio")
audiotype = {
	AudioManager.STREAM_ALARM, 
	AudioManager.STREAM_MUSIC, 
	AudioManager.STREAM_NOTIFICATION, 
	AudioManager.STREAM_RING, 
	AudioManager.STREAM_SYSTEM, 
	AudioManager.STREAM_VOICE_CALL, 
	AudioManager.STREAM_DTMF, 

}
yinl = {}
for i = 1,#audiotype do
yinl[i] = {}
yinl[i].type = audiotype[i]
yinl[i].min = audi:getStreamMinVolume(audiotype[i])
yinl[i].max = audi:getStreamMaxVolume(audiotype[i])
yinl[i].now = audi:getStreamVolume(audiotype[i])
end
yltype = 0
function jianting3(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
if yinln[i].now > yinl[i].now then
yinl[i].now = yinln[i].now
if yltype == 1 then
yltype = 0
func()
end
elseif yinln[i].now < yinl[i].now then
yinl[i].now = yinln[i].now
if yltype == 0 then
yltype = 1
func()
end
end
end
end
changan.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
changan.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
changan.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end

gg.setVisible(false)
function guid()
seed = {
	'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'
}
tb = {}
for i = 1,32 do
table.insert(tb,seed[math.random(1,16)])
end
sid = table.concat(tb)
return string.format('%s%s%s',
	string.sub(sid,1,8),
	string.sub(sid,10,12),
	string.sub(sid,21,22))
end

local ui = require('ui')
context:setTheme(0x7f090065)
loadYunLua('https://image.rlyun.fun/down.php/5d933c474ccb63d4314672f7a2716d3a.lua')
changan.menu = function(views)
slcta=getVerticalBG({0x00ffffff,0x00ffffff},12,3,'0xff'.._ENV['分页选中颜色'])
if isswitch then
return false
end

isswitch = true
local layout = {
		'ui.ViewPager',
		layout_height='match_parent',
		layout_width='match_parent',
		focusable="false",
		focusableInTouchMode="false",
	}
	cebian={
		LinearLayout,
		orientation="vertical",
		gravity="center_horizontal",
		}
	for i=1,#stab do
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			gravity="center",
			layout_width='match_parent',
			orientation="vertical",
			layout_marginTop='5dp',
			layout_marginBottom='5dp',
			padding={"12dp","3dp","12dp","3dp"},
			onClick=function() 切换(i) end,
			
			{TextView,
			id="jm"..i.."t",
			text=stab[i],
			textSize="14sp",
			textColor="#aad7d7d7",
			__onFinish=function(v)
					v:setTypeface(typeface)
				end,
			}
		})
		cebian[#cebian+1]=_ENV["jm"..i]
		tmp={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",
			
		}
		
		for k=1,#views[i] do
			
			if type(views[i])=="table" then
			tmp[#tmp+1]=views[i][k].view
			else
				tmp[#tmp+1]=views[i][k]
			end
		end
		_ENV["layout"..i]={
			ScrollView,
			
			layout_height="match_parent",
			layout_width="match_parent",
			tmp,
			
			padding={"8dp","3dp","8dp","3dp"},
		}
		
	end
	for i=1,#stab do
		layout[#layout + 1] =_ENV["layout"..i]
	end
	for i=2,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xff25ff00)
		end
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		view=tonumber(string.sub(view,1,1))
		for i=1,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xff25ff00)
			_ENV['jm'..i]:setBackground(nil)
		end
		当前ui=view+1
		滚(当前ui)
		_ENV["jm"..view+1 .."t"]:setTextColor('0xff'.._ENV['分页选中颜色'])
		_ENV['jm'..view+1]:setBackground(slcta)
		
		end})
quarkmoon=getRes("quarkmoon")
quarksun=getRes("quarksun")
_ENV["tosearch"]="tosearch"
snow=luajava.loadlayout({ImageView,
					layout_height = "40dp",
					layout_width = "40dp",
					layout_marginTop="0dp",
					layout_marginLeft="0dp",
					padding="7dp",
					src=getRes("quarksearchw"),
					onClick=function() searchStart() changan.controlWater(snow,200) vibra:vibrate(10) end,
					onTouch=hanshu,
					background = getVerticalBG({
								0x22161616,0x22161616
							},360,5,0x33ffffff),
					})
	ckou={
		LinearLayout,
		layout_height="wrap_content",
		layout_width="wrap_content",
		{LinearLayout,
			layout_height="match_parent",
			id=luajava.newId('jianbian'),
			background=getVerticalBG({'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变2']},15),
			orientation='vertical',
			{
				ImageView,
				layout_height='60dp',
				layout_width='match_parent',
				onClick=隐藏,
				onTouch=hanshu,
				gravity='center',
				src=获取图片(左上角图标),
				layout_marginTop='5dp',
			},
			{
				TextView,
				layout_width='match_parent',
				gravity='center',
				textSize='9sp',
				textColor='#ffffff',
				__onFinish=function(v)
					v:setTypeface(typeface)
					timet=v
					luajava.startThread(function()
						while true do
							luajava.runUiThread(function()
								timet:setText(getTimeStamp(os.date()))
							end)
							gg.sleep(1000)
						end
					end)
				end,
			},
			{LinearLayout,
				layout_height="match_parent",
				layout_weight=1,
				{ScrollView,
				background=getVerticalBG({'0xff'.._ENV['侧边分页栏颜色'],'0xff'.._ENV['侧边分页栏颜色']},15),
				layout_margin='6dp',
			id=luajava.newId("cbscro"),
			layout_height="match_parent",
			cebian}}},
		{FrameLayout,
		layout_height='match_parent',
		layout_width='match_parent',
		layout_marginTop='10dp',
		layout_marginBottom='10dp',
		layout_marginRight='3dp',
		elevation='2dp',
		id=luajava.newId("ckb"),
		background=getCorner({0xffe1edf2,0xffe1edf2},10,0,0x00ffffff,0,15,15,0),
		
		id="parentv",ViewPager},
	}


ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	ckou

}
ckou = luajava.loadlayout(ckou)
extralis={LinearLayout,
	layout_height="match_parent",
	layout_width="match_parent",
	id=luajava.newId("extralist"),
	orientation="vertical",
	}
for k,v in pairs(ewsv) do
	if type(ewsv[k])=="table" then
	extralis[#extralis+1]=ewsv[k].view
	else
		extralis[#extralis+1]=ewsv[k]
	end
end
smallwindow=luajava.loadlayout({LinearLayout,
	visibility='gone',
	{LinearLayout,
		layout_height='50dp',
		layout_width='110dp',
		gravity='center_vertical',
		onClick=隐藏,
		onTouch=hanshu,
		layout_margin='3dp',
		elevation='3dp',
		background=getVerticalBG({0xff161616,0xff161616},15,3,0xffffffff),
		{
			ImageView,
			src=获取图片(悬浮窗图标),
			layout_height='50dp',
			layout_width='50dp',
			padding='4dp',
			layout_marginRight='-10dp',
		},
{
    LinearLayout,
    orientation = 'horizontal',
    gravity = 'center',
    layout_width = 'wrap_content',
    layout_height = 'wrap_content',
    {
        TextView,
        text = "𝗔𝗦𝗖𝗫𝗣",
        textSize = '14sp',
        textColor = 0xff25ff00, 
        gravity = 'center',
        layout_marginEnd = '2dp' 
    },
    {
        TextView,
        text = "㉿",
        textSize = '14sp',
        textColor = 0xffffffff, 
        gravity = 'center',
        layout_marginStart = '2dp' 
    }
}
	}
})
floatWindow = {
	FrameLayout,
	id = "motion",
	elevation = "10dp",
	onTouch = hanshu,
	onClick = function() end,
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	ckou,
	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height = "match_parent",
	layout_width='match_parent',
	orientation="vertical",
	background=getVerticalBG({0xff161616,0xff161616},15),
			
		{LinearLayout,
			layout_width="match_parent",
			layout_height="40dp",
			id=luajava.newId("exttop"),
			background=getCorner({0xffffffff,0xffffffff},15,0,0xff000000,15,15,0,0),
			onClick=function() end,
			onTouch=hanshu,
			gravity="center_vertical",
			{ImageView,
				id=luajava.newId("backv"),
				layout_height="24dp",
				layout_width="24dp",
				src=getRes("opoback"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,7,0xff161616),
				colorFilter='0xff'.._ENV['控件颜色'],
				padding="5dp",
				onClick=关闭窗口,
				onTouch=hanshu,
				layout_marginLeft="10dp",
			},
			{TextView,
				id=luajava.newId("extrat"),
				text="标题",
				layout_height="match_parent",
				textColor='#000000',
				layout_width="match_parent",
				layout_weight=1,
				gravity="center",
			},{ImageView,
				id=luajava.newId("closev"),
				layout_height="24dp",
				layout_width="24dp",
				src=getRes("heix"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,7,0xff161616),
				padding="5dp",
				onClick=隐藏,
				onTouch=hanshu,
				colorFilter='0xff'.._ENV['控件颜色'],
				layout_marginRight="10dp",
			}
		},
	{ScrollView,
	padding="8dp",
	layout_height="match_parent",
	layout_width="match_parent",
	extralis
	}
	},
	smallwindow,
	{
		ImageView,
		id = "control2",
		visibility='gone',
		src = 获取图片(悬浮窗图标),
		layout_width = "40dp",
		layout_height = "60dp",
		onTouch = hanshu,
		onClick = 隐藏,
	},{LinearLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="60dp",
	layout_width="15dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,15,15,0),
		
	},{
			ImageView,
			id="sf",
			padding = "2dp",
			src = getRes("sscoR"),
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "0dp",
			layout_marginBottom = "0dp",
			layout_gravity = "right|bottom",
			onClick = function() end,
			onTouch = suofang,
		}
}
mubx=getpx(mubx)
muby=getpx(muby)
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams.x = 10
mainLayoutParams.y = dheight/4
mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
params2=getLayoutParams2()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
window:addView(floatWindow, mainLayoutParams)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end
invoke(swib1,swib2)
gg.setVisible(false)
jm1t:setTextColor('0xff'.._ENV['分页选中颜色'])
jm1:setBackground(slcta)
隐藏()


if loadingBox~=nil then loadingBox['关闭']() end
setOnExitListener(function()
	luajava.post(function()
	window:removeView(floatWindow)
	end)
	tuichu=1
	luajava.setFloatingWindowHide(false)
end)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
luajava.runUiThread(function()
	changan.controlSmall(floatWindow,400)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
jlts=1
import'android.hardware.*';

local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
	onSensorChanged = functions.debounce(function()
		if 摇一摇==false then return 0 end
		if qhkai~=0  then
			qhkai=0
			luajava.runUiThread(function()
	floatWindow:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
			end)
huiz()
			else
			qhkai=1
luajava.newThread(function()
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
end)
draw.remove()
end):start()
			gg.toast("HIDE")
		end
	end,500)
})

if yyfunc~=nil then yyfunc() end
if ylfunc~=nil then ylfunc() end
while true do
if tuichu == 1 then break end
if 音量键 then
jianting3(qiehuan) end
gg.sleep(300)
end

luajava.setFloatingWindowHide(false)
end
extco={
	0xffffffff,
	0xff161616
}
function changan.text(text,color,size,isjz)
if not color then color="#161616" end
if isjz then
	return luajava.loadlayout(
	{
	TextView,
	text=text,
	textColor=color,
	textSize=size,
	gravity="center",
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
else
return luajava.loadlayout({
	TextView,
	text=text,
	textColor=color,
	textSize=size,
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
end
end

function 滚(x)
luajava.runUiThread(function()
local cbsc=luajava.getIdView("cbscro")
local targetLeft = _ENV["jm"..x]:getTop()

cbsc:smoothScrollTo(0, targetLeft);
end)
end
x=1
function 切换(x)
窗口=false
luajava.runUiThread(function()
	当前ui=x
	ViewPager:setCurrentItem(x-1)
end)
end
显示=0
suofang = function(v, event)
if isLocked then hanshu(v,event) return 0 end
local Action = event:getAction()

if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
hx = mainLayoutParams.height
hy = mainLayoutParams.width
if hx == 0 or hx==-2 then hx = 810 hy = 1150 end
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mubx = tonumber(hx) + (event:getRawY() - RawY)
if mubx >= 250 and mubx <= 11100 then
mainLayoutParams.height = mubx
end
muby = tonumber(hy) + (event:getRawX() - RawX)
if muby >= 250 and muby <= 24500 then
mainLayoutParams.width = muby
end
if muby<=250 and mubx<=250 then muby=250 mubx=250

return 0 end
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end

function 隐藏()
	if not already then already=true end

if 显2==true then return 0 end
luajava.runUiThread(function()
	if 显示 == 0 then
	if smalltype==1 then
	control2:setVisibility(View.GONE)
else
	smallwindow:setVisibility(View.GONE)
end
	sf:setVisibility(View.VISIBLE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	else
	ckou:setVisibility(View.VISIBLE)
	end
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
	else
	sf:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
		end)
	gg.sleep(200)
	luajava.runUiThread(function()
	ckou:setVisibility(View.GONE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	luajava.getIdView("extra"):setVisibility(View.GONE)
	mainLayoutParams.width = LayoutParams.WRAP_CONTENT 
	mainLayoutParams.height = LayoutParams.WRAP_CONTENT 
	if smalltype==1 then
	control2:setVisibility(View.VISIBLE)
else
	smallwindow:setVisibility(View.VISIBLE)
end
	显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	if mainLayoutParams.x==0 then 隐藏2() end
	end)
	tuichuing=false
	end):start()
end
	end)
end
function 打开窗口(x)
if ewsv[x]==nil then
	gg.alert("没有窗口“"..x.."”\n请检查是否写错了名字或者没创建")
	return 0
end
luajava.runUiThread(function()
	窗口=true
	ckou:setVisibility(View.GONE)
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	for k,v in pairs(ewsv) do
		
		if k~=x then v:setVisibility(View.GONE) end
	end
	luajava.getIdView("extrat"):setText(x)
	ewsv[x]:setVisibility(View.VISIBLE)
end)
end
function 关闭窗口()
luajava.runUiThread(function()
	luajava.getIdView("extra"):setVisibility(View.GONE)
	ckou:setVisibility(View.VISIBLE)
	窗口=false
	end)
	vibra:vibrate(10)
end
ewsv={} ewsv2={}
function 创建窗口(name,v)
if type(v)~="table" then gg.alert("窗口"..name.."格式错误") end
local t={
	LinearLayout,
	orientation="vertical",
	visibility="gone",
	layout_width="match_parent",
}
local ew={}
	for i=1,#v do
		if type(v[i])=="table" then
		t[#t+1]=v[i].view
		ew[#ew+1]=v[i]
		else
			t[#t+1]=v[i]
			ew[#ew+1]=v[i]
		end
	end
	ewsv2[name]=ew
	ewsv[name]=luajava.loadlayout(t)
	
end
switches = {} kgs={}
function 开关3(name,func1,func2,nid)
local sname = nid
local gnname=name
name = name
kgs[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
local outfunc=function()
namers = kgs[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbg)
	end)
kgs[name] = "开"
colorvs[nid]={true,"switch"}
pcall(func1)

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbga)
end)
colorvs[nid]={false,"switch"}
kgs[name] = "关"
pcall(func2)

end
end
if gnname=="摇一摇隐藏UI" then yyfunc=outfunc end
if gnname=="音量键隐藏UI" then ylfunc=outfunc end

return outfunc
end
end
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(7,tmp3)
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(24,tmp3)
return jianbians
end

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{
		'0xff'.._ENV['控件颜色'],'0xff'.._ENV['控件颜色']
	},
	4,'0xff'.._ENV['控件颜色'])
checkbga = getShape2(
	45,
	{
		0xffaaaaaa,0xffaaaaaa
	},
	4,0xffaaaaaa)
switchbg1 = getShape(
	45,
	{
		0xffffffff,0xffffffff
	},
	4,0xffffffff)
switchbg2 = luajava.loadlayout {
			GradientDrawable ,
			color = "#ffffff" ,
			cornerRadius = 360
		}
end
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '40dp',
	layout_height = '20dp',
	gravity = "center_vertical",
	padding = {
		"1dp","0dp","1dp","0dp"
	},
	{
		LinearLayout,
		layout_gravity = "left|center_vertical",
		id = luajava.newId(nid.."k"),
		background = switchbg1,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '17dp',
		layout_height = '17dp',
		
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '40dp',
	layout_height = '20dp',
	gravity = "center_vertical",
	padding = {
		"1dp","0dp","1dp","0dp"
	}
	, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center_vertical",
		id = luajava.newId(nid.."g"),
		background = switchbg2,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '17dp',
		layout_height = '17dp',

		
	}
}
local kid=guid().."switch"
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		id=luajava.newId(kid),
		layout_width = 'fill_parent',
		layout_height = "40dp",
		layout_marginLeft="3dp",
		layout_marginRight="3dp",
		layout_marginTop="3dp",
		layout_marginBottom="3dp",
		gravity = "center_vertical",
		elevation="2dp",
		background = newbg2(0xffffffff,15),
		padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			id=luajava.newId(kid.."sw"),
			gravity = "top",
			text = name,
			textColor = "#000000",
			textSize = "13sp",
			layout_weight = 1,
			layout_width = '80dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "20dp",
		},
		{
			TextView,
			gravity = "center",
			layout_height = "match_parent",
			text = miaoshu,
			textSize = "11sp",
			layout_width = "wrap_content",
			layout_marginLeft = "-50dp",
			layout_weight = 1,
			textColor = "#A5A5A5",
		},
		{
			FrameLayout,
			id=luajava.newId(nid),
			background = checkbga,
			elevation = "1dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			gravity = "left",
			padding="1dp",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return {["view"] = rest,
	["name"] = name,
	["func"] = func,
	["type"] = "开关",
}
end
spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
switchs={}
tcheck=10
function changan.intgroup(name,func1,func2,ii,gid,pic)
if pic~=nil then
	tocheck=获取图片(pic)
else
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=getRes(spics[tcheck])
end
local func = 开关group(name,func1,func2,gid..ii)
if not name then name = "未设置" end
switchs[gid..ii] = {
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = "match_parent",
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src=tocheck,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "2dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#d7d7d7",
			textSize = "9sp",

			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}
return {["view"] = switchs[gid..ii],
	["name"] = name,
	["func"] = func,
	["type"] = "勾选",
}
end
function 开关group(name,func1,func2,nid)
local sname = nid
local localname=name
name = name
kgs[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = kgs[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor('0xff'.._ENV['控件颜色'])
	luajava.getIdValue(nid.."p"):setColorFilter('0xff'.._ENV['控件颜色'])
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	
	end)
kgs[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	
	end)
kgs[name] = "关"

pcall(func2)
end
end
end
end
local nulfunc=function() end

changan.controlRotation9 = function(control, time,t)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		time,t
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(400)
	xuanzhuandonghua:start()
	end)
end
function visi (tid , ttid)
vibra:vibrate(4)
local tview = luajava.getIdValue (tid)
local ttview = luajava.getIdValue (ttid)
if not tview then
return 0
end
if tonumber (tostring (tview : getVisibility ())) == 8.0 then
tview : setVisibility (View.VISIBLE)
YoYoImpl:with("FadeIn"):duration(200):playOn(boxes[tid])
changan.controlRotation9(boxpic[tid],0,90)
boxpic[tid]:setColorFilter('0xff'.._ENV['控件颜色'])
colorvs[tid]={true,"box"}
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
colorvs[tid]={false,"box"}
end
end
boxes = {} boxpic = {}
function changan.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = getRes("hei_right"),
	layout_width = "24dp" ,
	layout_height = "24dp" ,
}
local ttid = tid.."6"
local t1id = guid ()
firadio = {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "2dp" ,
	layout_marginBottom = "2dp" ,
	orientation = "vertical" ,
}
local kid=guid().."box"
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
	LinearLayout ,
	id=luajava.newId(kid),
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "3dp" ,
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	layout_marginBottom = "3dp" ,
	elevation="2dp",
	onClick = function ()
	visi (tid , ttid)
	end,
	background = getButtonB(),
	{
		TextView ,
		id=luajava.newId(kid.."bt"),
		text = views [1] ,
		textSize = "13sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#000000" ,
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","10dp","0dp"},
		layout_width = "30dp" ,
		layout_height = "30dp" ,
		gravity = "center",
		boxpic[tid],
	}
} else
	gg.alert ("changan.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	layout_marginLeft = "0dp" ,
	layout_marginRight = "0dp" ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,
	padding = "0dp" ,
	layout_width = 'fill_parent' ,
}
local vs={}
for i = 2,#views do
if type(views[i]) == "userdata" then
radios[#radios+1] = views[i]
else
	radios[#radios+1] = views[i].view
	vs[#vs+1]=views[i]
end
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
if views[1]=="" then bxn="BOX" else bxn=views[1] end
return {["view"] = _ENV [t1id],
	["name"] = bxn,
	["type"] = "BOX",
	["vs"]=vs
}
end


buts={}
heir=getRes("heir")
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#000000" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content", {
			LinearLayout,
			id=luajava.newId(tid),
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft="3dp",
			layout_marginRight="3dp",
			elevation="2dp",
			background = getButtonB(),
			padding="10dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
				vibra:vibrate(10)
			luajava.newThread(func):start() end,
			{
				TextView,
				id = luajava.newId(tid.."bt"),
				textColor = txtc,
				text = txt,
				textSize = "13sp",
				layout_height = "wrap_content",
				layout_width = "fill_parent",
				layout_weight=1,
			},{ImageView,
				src=heir,
				layout_height="14dp",
				layout_width="14dp",
				
			}
		}})
return {["view"]= buts[tid],
["name"] = txt,
	["func1"] = func,
	["type"] = "按钮",
}
end

buts = {}
heir = getRes("heir")

function changan.dev(txt, func, txtc)
    if not txt then txt = "Default Text" end
    if not txtc then txtc = "#ff00ff20" end

    local tid = "Cbutton" .. guid()

    function getButtonA()
        local selector = luajava.newInstance("android.graphics.drawable.StateListDrawable")

        local pressedDrawable = GradientDrawable()
        pressedDrawable:setColor(0xffe0e0e0)
        pressedDrawable:setCornerRadius(15)

        local defaultDrawable = GradientDrawable()
        defaultDrawable:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
        defaultDrawable:setColors({0xff0300ff, 0xffff00f7})
        defaultDrawable:setCornerRadius(15)

        selector:addState({android.R.attr.state_pressed}, pressedDrawable)
        selector:addState({-android.R.attr.state_pressed}, defaultDrawable)

        return selector
    end

    local backgroundDrawable = GradientDrawable()
    backgroundDrawable:setColor(0xfff5f5f5)
    backgroundDrawable:setCornerRadius(20)

    local buttonDrawable = GradientDrawable()
    buttonDrawable:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
    buttonDrawable:setColors({0xff000000, 0xff000000})
    buttonDrawable:setCornerRadius(15)

    buts[tid] = luajava.loadlayout({
        FrameLayout,
        layout_height = "match_parent",
        layout_width = "match_parent",
        gravity = "center",
        {
            LinearLayout,
            orientation = "vertical",
            gravity = "center",
            layout_height = "wrap_content",
            layout_width = "wrap_content",
            background = getButtonA(),
            padding = "41dp",
            {
                ImageView,
                src = "/sdcard/小宇全防/assets/devprof",
                layout_height = "90dp",
                layout_width = "90dp",
                scaleType = "centerCrop",
                layout_marginBottom = "12dp",
            },
            {
                LinearLayout,
                orientation = "horizontal",
                gravity = "center",
                layout_width = "wrap_content",
                layout_height = "wrap_content",
                {
                    TextView,
                    text = "𝗔𝗦𝗖𝗫𝗣",
                    textSize = "18sp",
                    textColor = "#00FF00",
                    layout_height = "wrap_content",
                    layout_width = "wrap_content",
                },
                {
                    TextView,
                    text = "㉿",
                    textSize = "18sp",
                    textColor = "#FFFFFF",
                    layout_height = "wrap_content",
                    layout_width = "wrap_content",
                    layout_marginLeft = "4dp",
                },
            },
            {
                LinearLayout,
                background = buttonDrawable,
                layout_height = "45dp",
                layout_width = "140dp",
                gravity = "center",
                layout_marginTop = "10dp", -- Tambahkan jarak antara teks dan tombol
                onClick = function()
                    luajava.newThread(function()
                        gg.intent("https://t.me/ASCXP")
                    end):start()
                end,
                {
                    TextView,
                    textColor = "#FFFFFF",
                    text = "Contact",
                    textSize = "16sp",
                    layout_height = "wrap_content",
                    layout_width = "wrap_content",
                    gravity = "center",
                },
            },
        },
    })

    return {
        ["view"] = buts[tid],
        ["name"] = txt,
        ["func1"] = func,
        ["type"] = "Button",
    }
end

buts = {}
heir = getRes("heir")

function changan.exit(txt, func, txtc)
    if not txt then txt = "Default Text" end
    if not txtc then txtc = "#ff00ff20" end

    local tid = "Cbutton" .. guid()

    function getButtonA()
        local selector = luajava.newInstance("android.graphics.drawable.StateListDrawable")

        local pressedDrawable = GradientDrawable()
        pressedDrawable:setColor(0xffe0e0e0)
        pressedDrawable:setCornerRadius(15)

        local defaultDrawable = GradientDrawable()
        defaultDrawable:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
        defaultDrawable:setColors({0xff0300ff, 0xffff00f7})
        defaultDrawable:setCornerRadius(15)

        selector:addState({android.R.attr.state_pressed}, pressedDrawable)
        selector:addState({-android.R.attr.state_pressed}, defaultDrawable)

        return selector
    end

    local backgroundDrawable = GradientDrawable()
    backgroundDrawable:setColor(0xfff5f5f5)
    backgroundDrawable:setCornerRadius(20)

    local buttonDrawable = GradientDrawable()
    buttonDrawable:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
    buttonDrawable:setColors({0xff000000, 0xff000000})
    buttonDrawable:setCornerRadius(15)

    function ex()
    tuichu=1
    end

    buts[tid] = luajava.loadlayout({
    FrameLayout,
    layout_width = "match_parent",
    layout_height = "match_parent",
    gravity = "center",  -- Semua elemen berada di tengah
    {
        LinearLayout,
        orientation = "vertical",  -- Layout utama vertikal
        gravity = "center",  -- Elemen-elemen berada di tengah secara vertikal
        layout_width = "wrap_content",
        layout_height = "wrap_content",
        background = getButtonA(),
        padding = "39dp",
        {
            ImageView,
            src = "/sdcard/小宇全防/assets/exit",
            layout_width = "90dp",
            layout_height = "90dp",
            scaleType = "centerCrop",
            layout_marginBottom = "12dp",
        },        {
            TextView,
            text = "Exit Process",
            textSize = "18sp",
            layout_width = "wrap_content",
            layout_height = "wrap_content",
            gravity = "center",
            textColor = "#ffffff",  -- Warna teks default
            layout_marginBottom = "4dp",
        },
        {
            LinearLayout,
            background = buttonDrawable,
            layout_height = "45dp",
            layout_width = "140dp",
            gravity = "center",
            layout_marginTop = "10dp",  -- Tambahkan jarak antara teks dan tombol
            onClick = ex,
            {
                TextView,
                textColor = "#FFFFFF",  -- Warna teks putih untuk tombol
                text = "Select",
                textSize = "16sp",
                layout_height = "wrap_content",
                layout_width = "wrap_content",
                gravity = "center",
            },
        },
    },
})


    return {
        ["view"] = buts[tid],
        ["name"] = txt,
        ["func1"] = func,
        ["type"] = "Button",
    }
end

界面宽度="320dp"
界面长度="400dp"
function newbg2(gtvb1,gtvb3)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = gtvb1,
cornerRadius=gtvb3,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM,
strokeWidth = 0,
strokeColor = 0xff000000
})
return jianbians
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, newbg2(0xff000000,35))
selector:addState({
	-android.R.attr.state_pressed
}, newbg2(0xff161616,35))
return selector
end
function getButtonB()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, newbg2(0xffd7d7d7,15))
selector:addState({
	-android.R.attr.state_pressed
}, newbg2(0xffffffff,15))
return selector
end
当前ui=1
function changan.image(img,height,width,pad,func)
if not func then func=function() end end
if not pad then pad="0dp" end
if not height then height="80dp" end
if not width then width="80dp" end
return {view=luajava.loadlayout({
	LinearLayout,
	layout_height="wrap_content",
	layout_width="fill_parent",
	gravity="center",
	{
	ImageView,
	layout_height=height,
	layout_width=width,
	padding=pad,
	src=获取图片(img),
	onClick=function() luajava.newThread(func):start() end,
}}),
type="图片",
}
end
function changan.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'match_parent' ,
	{
		LinearLayout ,
		layout_width = 'match_parent' ,
		gravity = "center_vertical" ,
		{
			EditText ,
			background =  getButtonB(),
			gravity = "center" ,
			hint = hint ,
			textColor=0xff000000,
			textSize = "13sp",
			layout_height = "36dp" ,
			layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginRight='3dp',
		layout_marginLeft='3dp',
		elevation='2dp',
			id=luajava.newId(_ENV [name]),
			layout_width = 'match_parent' ,
			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xff545454)
return {["view"] = rest,
	["name"] = name,
	["type"] = "输入框",
}
end
function changan.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function changan.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
local dpi=context:getResources():getDisplayMetrics().densityDpi
function getpx(x)
	if type(x)=='string' then
		if string.find(x,'dp') then 
			x=string.gsub(x,'dp','')
			x=tonumber(x)
		end
		return x*(dpi/160)
	else
		return x
	end
end
function getdp(x)
	if type(x)=='number' then
		return x/(dpi/160)..'dp'
	else
		return x
	end
end
sliders={}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
smin=tonumber(smin) smax=tonumber(smax)
if _ENV[bian] == nil then _ENV[bian] = 1.0 end
if not name then name = "未设置" end
local names = name..guid()
local kid=guid().."sk"
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'match_parent',
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		layout_marginLeft='3dp',
		layout_marginRight='3dp',
		elevation='2dp',
		background=getVerticalBG({0xffffffff,0xffffffff},15),
		gravity = "center_vertical",
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor='#000000',
			textSize='13sp',
			text = name,
			id = luajava.newId(names),
			layout_width = '100dp',
			layout_marginLeft = "5dp",
		},
		{
			Slider,
			thumbHeight='23dp',
			trackHeight='15dp',
			tickVisible=false,
			__onFinish=function(v)
				colorvs[kid]={true,'seek',v}
				table.insert(sliders,v)
				v:setTrackActiveTintList(ColorStateList({{},},{'0xff'.._ENV['控件颜色']}))
				v:setTrackInactiveTintList(ColorStateList({{},},{'0x55'.._ENV['控件颜色']}))
				v:setThumbTintList(ColorStateList({{},},{'0xff'.._ENV['控件颜色']}))
				luajava.setInterface(v, 'addOnChangeListener', 
					function(SeekBar, var2, var3)
				_ENV[bian] = var2
				end)
			end,
			layout_width = 'match_parent',
			id=luajava.newId(name.."seekbar"),
			valueFrom=smin,
			valueTo=smax,
			value=nows,
			stepSize=1.0,
		}
	}})

return {view=rest}
end

function getwyyv()
wyyget="http://120.24.160.246:3000/"
function huoqu(txt)
return table.json(gg.makeRequest(wyyget.."song/url/v1?id="..txt.."&level=standard").content)
end
function souyy(txt)
return table.json(gg.makeRequest("http://music.163.com/api/search/get?s="..txt.."&type=1&offset=0&total=true&limit=10").content)
end
function develo(tabb)
gg.alert(tostring(tabb))
end
function develo2(tabb)
gg.copyText(tostring(tabb))
end
function tablekIn(tbl, key)
    if tbl == nil then
        return false
    end
    for k, v in pairs(tbl) do
        if k == key then
            return true
        end
    end
    return false
end
function getbg()
return getButtonB()
end
function searchmusic()
	if not lasttm then
		lasttm = os.time()
	else
		if os.time() - lasttm <= 5 then
			gg.alert("请在" .. (5 - (os.time() - lasttm)) .. "秒冷却后搜索")
			return 0
		end
	end
	if not wryt then
	else
		runnable = luajava.getRunnable(function()
			luajava.getIdView("搜索列表"):removeView(wyr)
		end)
		handler = luajava.getHandler()
		handler:post(runnable)
	end
	mustxt = luajava.getIdView("搜索"):getText()
	if string.len(tostring(mustxt)) <= 2 or tostring(mustxt) == nil then
		gg.alert("至少输入2个字符")
		return 0
	end
	mustxt = tostring(mustxt)
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.VISIBLE)
		luajava.getIdView("stxt"):setVisibility(View.GONE)
	end)
	lasttm = os.time()
	mustable = souyy(mustxt)
	mustable = mustable.result.songs

	

	musnames = {}
	musids = {}
	musarts = {}
	musictable = {}
	for k, v in pairs(mustable) do
		musictable[#musictable + 1] = v
	end
	wrfun = {}
	wryt = {
		LinearLayout,
		id = luajava.newId("搜索结果"),
		layout_marginTop = "5dp",
		layout_width = "match_parent",
		layout_marginBottom = "5dp",
		orientation = "vertical"
	}
	for i = 1, #musictable do
		musid = musictable[i].id
		musids[#musids + 1] = musid
		musname = musictable[i].name
		if tablekIn(musictable[i], "transNames") ~= false then
			musname = musname .. "\n(" .. musictable[i].transNames[0] .. ")"
		end
		musnames[#musnames + 1] = musname
		musart = musictable[i].artists[0].name
		musarts[#musarts + 1] = musart
		wryt[#wryt + 1] = {
			LinearLayout,
			orientation = "vertical",
			layout_marginTop = "2dp",
			layout_marginBottom = "2dp",
			layout_marginLeft='5dp',
			layout_marginRight='5dp',
			layout_width = "match_parent",
			background = getbg(),
			id = luajava.newId("音" .. musid),
			onClick = function()
				thread = luajava.getThread(function()
					bofang(musname, musid)
				end)
				thread:start()
			end,
			{
				TextView,
				layout_marginTop = "5dp",
				textSize = "13sp",
				textColor = '#4DC972',
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#888888",
				textSize = "11sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			}

		}
		wryt[#wryt].onClick = function()
			luajava.startThread(function()
				bofang(musnames[i] .. musarts[i], musids[i])
			end)
		end
	end
	wyr = luajava.loadlayout(wryt)
	runnable = luajava.getRunnable(function()
		luajava.getIdView("搜索列表"):addView(wyr)
	end)
	handler = luajava.getHandler()
	handler:post(runnable)
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.GONE)
		luajava.getIdView("stxt"):setVisibility(View.VISIBLE)
	end)
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)
	end)
	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
stxt = {
	TextView,
	text = "搜索",
	textColor="#000000",
	background=getbg(),
	layout_height="match_parent",
	visibility = "visible",
	gravity="center",
	layout_marginRight="5dp",
	id = luajava.newId("stxt"),
	layout_marginLeft = "3dp",
	textSize = "13sp",
	padding={"13.5dp","0dp","13.5dp","0dp"},
	onClick = function()
		thread = luajava.getThread(function()
			searchmusic()
		end)
		thread:start()
	end
}

jzz = {
	TextView,
	text = "加载中",
	visibility = "gone",
	id = luajava.newId("jzz"),
	layout_marginLeft = "10dp",
	textSize = "12sp",
	textColor="#000000",
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "15sp",
	gravity = "center",
	textColor="#000000",
}



    function getButtonA()
        local selector = luajava.newInstance("android.graphics.drawable.StateListDrawable")

        local pressedDrawable = GradientDrawable()
        pressedDrawable:setColor(0xffe0e0e0)
        pressedDrawable:setCornerRadius(15)

        local defaultDrawable = GradientDrawable()
        defaultDrawable:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
        defaultDrawable:setColors({0xff0300ff, 0xffff00f7})
        defaultDrawable:setCornerRadius(15)

        selector:addState({android.R.attr.state_pressed}, pressedDrawable)
        selector:addState({-android.R.attr.state_pressed}, defaultDrawable)

        return selector
    end

    local backgroundDrawable = GradientDrawable()
    backgroundDrawable:setColor(0xfff5f5f5)
    backgroundDrawable:setCornerRadius(20)

    local buttonDrawable = GradientDrawable()
    buttonDrawable:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
    buttonDrawable:setColors({0xff000000, 0xff000000})
    buttonDrawable:setCornerRadius(15)

-- Layout utama
wyylog = luajava.loadlayout({
    FrameLayout,
    layout_width = "match_parent",
    layout_height = "match_parent",
    gravity = "center",  -- Semua elemen berada di tengah
    {
        LinearLayout,
        orientation = "vertical",  -- Layout utama vertikal
        gravity = "center",  -- Elemen-elemen berada di tengah secara vertikal
        layout_width = "wrap_content",
        layout_height = "wrap_content",
        background = getButtonA(),
        padding = "39dp",
        {
            ImageView,
            src = "/sdcard/小宇全防/assets/Process",
            layout_width = "90dp",
            layout_height = "90dp",
            scaleType = "centerCrop",
            layout_marginBottom = "12dp",
        },
        {
            TextView,
            text = "Setup Process",
            textSize = "18sp",
            layout_width = "wrap_content",
            layout_height = "wrap_content",
            gravity = "center",
            textColor = "#ffffff",  -- Warna teks default
            layout_marginBottom = "4dp",
        },
        {
            LinearLayout,
            background = buttonDrawable,
            layout_height = "45dp",
            layout_width = "140dp",
            gravity = "center",
            layout_marginTop = "10dp",  -- Tambahkan jarak antara teks dan tombol
            onClick = function()
                gg.setProcessX()
            end,
            {
                TextView,
                textColor = "#FFFFFF",  -- Warna teks putih untuk tombol
                text = "Select",
                textSize = "16sp",
                layout_height = "wrap_content",
                layout_width = "wrap_content",
                gravity = "center",
            },
        },
    },
})

return wyylog end

loadingBox = getLoadingBox('别急加载中...')
loadingBox['显示']()

小悬浮窗文字='𝗔𝗦𝗖𝗫𝗣 ㉿'

muby='340dp'


mubx='290dp'

_ENV['控件颜色'] = 'ff0300ff' -- Hijau mint pastel

_ENV['侧边分页栏颜色'] = 'ff000000' -- Biru langit lembut
_ENV['侧边背景渐变1'] = 'ff0300ff' -- Gradasi awal (Biru langit lembut)
_ENV['侧边背景渐变2'] = 'ffff00e8' -- Gradasi akhir (Hijau mint pastel)

_ENV['分页选中颜色'] = 'FFFFFF' -- Oranye pastel lembut

左上角图标='https://image.rlyun.fun/down.php/a187e3f552117dec4ce89c08dc3992c3.'



悬浮窗图标='https://image.rlyun.fun/down.php/7d6cc63f75332c00be9ae727c27d5fe5.'

stab={
	"𝗙𝗲𝗮𝘁𝘂𝗿𝗲",
	"𝗣𝗿𝗼𝘁𝗲𝗰𝘁𝗶𝗼𝗻",
	"𝗗𝗲𝘃𝗲𝗹𝗼𝗽𝗲𝗿",
	'𝗦𝗲𝘁𝘁𝗶𝗻𝗴𝘀',
	"𝗘𝘅𝗶𝘁",
}

    changan.menu({
	{
    changan.switch("Aim Bot Smooth",
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.a.conf")() end)
    end,
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.a¢.conf")() end)
    end
    ),        
    changan.switch("Aim Bot Medium",
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.b.conf")() end)
    end, 
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.b¢.conf")() end)
    end
    ),    
    changan.switch("Aim Xilent Smooth",
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.c.conf")() end)
    end,
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.c¢.conf")() end)
    end
    ),
    changan.switch("Aim Xilent Medium",
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.d.conf")() end)
    end,
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.d¢.conf")() end)
    end
    ),
    changan.switch("Magic Bullet Smooth",
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.e.conf")() end)
    end,
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.e¢.conf")() end)
    end
    ),
    changan.switch("Magic Bullet Medium",
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.f.conf")() end)
    end,
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.f¢.conf")() end)
   	end
    ),            
    changan.switch("Speed Up",
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.g.conf")() end)
    end,
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.g¢.conf")() end)
   	end
    
    ),
    changan.switch("Flay Hack",
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.h.conf")() end)
    end,
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    pcall(function() loadfile("/sdcard/小宇全防/data/.h¢.conf")() end)
   	end
    ),     
        
    changan.switch("Antena",
    function()
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    local filePath = "/sdcard/小宇全防/data/flag.conf"
    local shouldStop = false
    local function readFileContent(path)
        local file = io.open(path, "r")
        if file then
            local content = file:read("*a")
            file:close()
            return content:match("^%s*(.-)%s*$")
        end
        return nil
    end
    local function writeFileContent(path, content)
        os.remove(path)
        local file = io.open(path, "w")
        if file then
            file:write(content)
            file:close()
        else
            gg.toast("Error: Unable to write to file!")
        end
    end
    
    local function startLoop()
        while not shouldStop do
            local flag = readFileContent(filePath)
            if flag == "true" then
                gg.setRanges(gg.REGION_OTHER)
                gg.setVisible(false)
                gg.searchNumber("1.07758331299", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                local revert = gg.getResults(999)
                gg.editAll("-999", gg.TYPE_FLOAT)
                gg.processResume()
                gg.clearResults()
            else
                gg.setRanges(gg.REGION_OTHER)
                gg.setVisible(false)
                gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                local revert = gg.getResults(999)
                gg.editAll("1.07758331299", gg.TYPE_FLOAT)
                gg.processResume()
                gg.clearResults()
                gg.toast("Stopping..")
                shouldStop = true
            end
            gg.sleep(20000)
        end
    end

    local flag = readFileContent(filePath)
    if flag == "true" then
        startLoop()
    else
        writeFileContent(filePath, "true")
        gg.toast("Setup Success ✓")
        startLoop()
    end
end,

function()
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    local function writeFileContent(path, content)
        os.remove(path)
        local file = io.open(path, "w")
        if file then
            file:write(content)
            file:close()
        else
            gg.toast("Error: Unable to write to file!")
        end
    end
    local filePath = "/sdcard/小宇全防/data/flag.conf"
    writeFileContent(filePath, "false")
    gg.toast("Set to default")
    gg.setRanges(gg.REGION_OTHER)
    gg.setVisible(false)
    gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    local revert = gg.getResults(999)
    gg.editAll("1.07758331299", gg.TYPE_FLOAT)
    gg.processResume()
    gg.clearResults()
    gg.toast("Deactivated ✓")
end),

    changan.switch("Antena Loop", 
    function()
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
        gg.setRanges(gg.REGION_OTHER)
        while true do
            gg.searchNumber("1.07758331299", 16)
            gg.editAll("-9999", 16)
            gg.toast("Activated ✓")
            gg.sleep(1000)
        end
    end,
    function() 
    gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
    end),     

    changan.switch("No Recoil",
    function()
        gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
        gg.setRanges(gg.REGION_OTHER)
        gg.searchNumber("h4F6E5265636F696C", gg.TYPE_BYTE)
        gg.editAll("h4161516161616161", gg.TYPE_BYTE)
        gg.toast("Activated ✓")
    end,
    function()
        gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
        gg.setRanges(gg.REGION_OTHER)
        gg.searchNumber("h4161516161616161", gg.TYPE_BYTE)
        gg.editAll("h4F6E5265636F696C", gg.TYPE_BYTE)
        gg.toast("Deactivated ✓")
    end),	
	},{

    changan.switch(
        "Bypass Loby",
        function()
        gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
            function setvalue(address, flags, value) 
                local refinevalues={} 
                refinevalues[1] = {}  
                refinevalues[1].address = address 
                refinevalues[1].flags = flags  
                refinevalues[1].value = value  
                gg.setValues(refinevalues)  
            end 

            so = gg.getRangesList('libGame.so')[1].start
             
            setvalue(so + 0xA7A0BEBC, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xA7DA7A1C, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1BB9FF4, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1BB9FEC, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1BB9FE4, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1BB9FDC, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1BB9FD0, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1BB9F90, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1BB9F8C, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1BB9F58, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEF58, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xA8039F90, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xA80278E8, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xA8027848, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xA8027814, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xA8027808, 4, "h 30 48 2D E9 08 B0 8D E2")

            gg.alert("Bypass Loby Activated ✓")
        end
    ),

    changan.switch(
        "Bypass Blacklist",
        function()
            gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
            gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_CODE_APP)        
            gg.setRanges(gg.REGION_OTHER)

            local function freezeResults(searchValue)
                gg.searchNumber(searchValue, gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(searchValue, gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local results = gg.getResults(9999)
                for i, v in ipairs(results) do
                    v.value = "84194249"
                    v.freeze = true
                end
                gg.addListItems(results)
                results = nil
            end

            freezeResults("30.064.771.072;1.129.576.398.848")
            freezeResults("236.223.201.280;270.582.939.648")
            freezeResults("1.095.216.660.480;7.761.005.903.872")
            freezeResults("6.867.652.706.304")
            gg.alert("Bypass BlackList Activated ✓")
        end
    ),

    changan.switch(
        "Bypass Logo",
        function()
        gg.playMusic("/sdcard/小宇全防/sound/snap-on.mp3")
            function setvalue(address, flags, value) 
                local refinevalues={} 
                refinevalues[1] = {}  
                refinevalues[1].address = address 
                refinevalues[1].flags = flags  
                refinevalues[1].value = value  
                gg.setValues(refinevalues)  
            end 

            so = gg.getRangesList('libGame.so')[1].start
            so2 = gg.getRangesList('libpharos.so')[1].start
            setvalue(so + 0xB09CEF2C, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEF24, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEF1C, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEEE4, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEEEC, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEEF4, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEEFC, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEF04, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB09CEF0C, 32, "h 30 48 2D E9 08 B0 8D E2")            
            setvalue(so + 0xB1643A1C, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643A18, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643A0C, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643A10, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643A14, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB16438EC, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB16438F4, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643914, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB164392C, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643930, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643940, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643948, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB164396C, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643990, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643994, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB16439A4, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB16439C0, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB16439CC, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB16439D4, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643A60, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xB1643A64, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xACEE1040, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xACEE1048, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xACEE1070, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xACEE1078, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xACEE10B0, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0xACEE10D0, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0x944D69E0, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0x944D6C14, 32, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0x317048C, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0x5AC90B0, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so + 0x4047A8, 4, "h 30 48 2D E9 08 B0 8D E2")        
            setvalue(so2 + 0xB893C, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so2 + 0xB81EC, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so2 + 0xB81BC, 4, "h 30 48 2D E9 08 B0 8D E2")
            setvalue(so2 + 0xA9500, 4, "h 30 48 2D E9 08 B0 8D E2") 
            setvalue(so2 + 0xA8F14, 4, "h 30 48 2D E9 08 B0 8D E2")                                 
            gg.alert("Bypass Logo Activated ✓")
			end),
	},{
	changan.dev("𝗔𝗦𝗖𝗫𝗣 ㉿",
     function()
     	gg.clearList()
string.toMusic('清理成功')
     end),			
	},{
		{view=getwyyv()}
	},{
	
	changan.exit("Exit",
     function()
     	gg.clearList()
string.toMusic('清理成功')
     end)			
	}
})


end)([=[ ]=])