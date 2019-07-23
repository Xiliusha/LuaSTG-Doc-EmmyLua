---=====================================
---luastg 基础用户接口
---lstg 库
---作者:Xiliusha
---邮箱:Xiliusha@outlook.com
---=====================================

---@class lstg @lstg库
local m = {}

----------------------------------------
---初始化方法

---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---设置游戏是否窗口化显示；
---游戏默认设置为true，即窗口化显示；
---@param windowed boolean
---@return nil @该方法没有返回值
function m.SetWindowed(windowed)
end

---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---设置游戏帧数限制，游戏运行时将不会超过设置的帧数；
---游戏默认设置为60，即以60FPS的更新速率运行；
---@param FPSlimit number @该参数为0时，游戏将会尽可能快速地运行
---@return nil @该方法没有返回值
function m.SetFPS(FPSlimit)
end

---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---设置游戏是否启用垂直同步；
---游戏默认设置为true，即开启垂直同步；
---@param Vsync boolean
---@return nil @该方法没有返回值
function m.SetVsync(Vsync)
end

---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---设置游戏窗口分辨率；
---游戏默认设置为640x480；
---@param width number
---@param height number
---@return nil @该方法没有返回值
function m.SetResolution(width, height)
end

---【该方法将被废弃，因为它带来了很多bug】
---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---游戏初始化时显示启动图，并持续到游戏初始化完成；
---游戏默认设置为毛玉图片；
---@param imagefilepath string|nil @图片文件路径，如果该参数不为空，将会加载该路径指向的图片文件作为启动图
---@return nil @该方法没有返回值
function m.ShowSplashWindow(imagefilepath)
end

----------------------------------------
---游戏框架方法

---加载lua脚本，如果文件不存在、文件读取失败、lua脚本存在语法错误等将会触发error
---@param scriptfilepath string @脚本文件路径
---@param archivefilename string|nil @压缩包名，如果该参数不为空，则将会从指定的压缩包中加载脚本文件
---@return any @该方法将会返回加载的脚本文件return的值
function m.DoFile(scriptfilepath, archivefilename)
    return ...
end

---获取当前游戏帧率(FPS)
---@return number
function m.GetFPS()
    return 0
end

---更改游戏分辨率、窗口化、垂直同步设置
---@param width number
---@param height number
---@param windowed boolean
---@param Vsync boolean
---@return boolean @如果更改失败，将会返回false
function m.ChangeVideoMode(width, height, windowed, Vsync)
    return false
end

---显示、隐藏鼠标指针
---@param show boolean
---@return nil @该方法没有返回值
function m.SetSplash(show)
end

---更改游戏窗口名称
---@param windowtitle string
---@return nil @该方法没有返回值
function m.SetTitle(windowtitle)
end

----------------------------------------
---导出

return m
