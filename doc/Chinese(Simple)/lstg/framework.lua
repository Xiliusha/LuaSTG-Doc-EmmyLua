---=====================================
---框架方法
---=====================================

---@type lstg
local m=lstg

----------------------------------------
---初始化方法

---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---设置游戏是否窗口化显示；
---游戏默认设置为true，即窗口化显示；
---@param windowed boolean
function m.SetWindowed(windowed)
end

---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---设置游戏是否启用垂直同步；
---游戏默认设置为true，即开启垂直同步；
---@param Vsync boolean
function m.SetVsync(Vsync)
end

---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---设置游戏窗口分辨率；
---游戏默认设置为640x480；
---@param width number
---@param height number
function m.SetResolution(width, height)
end

---【即将废弃的方法，因为它带来了很多bug】
---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---游戏初始化时显示启动图，并持续到游戏初始化完成；
---游戏默认设置为毛玉图片；
---@param imagefilepath string|nil @图片文件路径，如果该参数不为空，将会加载该路径指向的图片文件作为启动图
function m.ShowSplashWindow(imagefilepath)
end

----------------------------------------
---游戏框架方法

---设置游戏帧数限制，游戏运行时将不会超过设置的帧数；
---游戏默认设置为60，即以60FPS的更新速率运行；
---@param FPSlimit number @该参数为0时，游戏将会尽可能快速地运行
function m.SetFPS(FPSlimit)
end

---加载lua脚本，如果文件不存在、文件读取失败、lua脚本存在语法错误等将会触发error
---@param scriptfilepath string @脚本文件路径
---@param archivefilename string|nil @压缩包名，如果该参数不为空，则将会从指定的压缩包中加载脚本文件
---@return any @该方法将会返回加载的脚本文件return的值
function m.DoFile(scriptfilepath, archivefilename)
	return unpack({})
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
function m.SetSplash(show)
end

---更改游戏窗口名称
---@param windowtitle string
function m.SetTitle(windowtitle)
end

---输出一条log信息
---@param level number @1, 2, 3, 4, 5, 分别代表 debug, info, warning, error, fatal
---@param msg string
function m.Log(level, msg)
end

---【即将废弃的方法】
---输出一条log信息
---@param msg string
function m.SystemLog(msg)
end

---输出一条log信息，用法类似lua的print
---@vararg string
function m.Print( ... )
end

---加载压缩包，密码是可选的（如果需要的话）
---@param path string
---@param password string|nil
function m.LoadPack(path, password)
end

---卸载压缩包
---@param path string @加载该压缩包时填写的路径
function m.UnloadPack(path)
end

---将指定文件（可以是压缩包内的文件）复制到指定路径
---@param src string @源文件路径
---@param dest string @目标文件路径
function m.ExtractRes(src, dest)
end

---从指定文本文件读取所有文本内容
---@param path string
---@param archivepath string|nil @可选的压缩包名，可以指定压缩包加载
---@return string
function m.LoadTextFile(path, archivepath)
	return ""
end

---枚举支持的分辨率，以类似“{{640,480},{800,600}}”的形式返回结果
---@return number[][]
function m.EnumResolutions()
	return {{640,480}}
end

---枚举指定目录下的文件，返回类似以下结构的table，第二项不为空时表示该文件在压缩包内
---```lua
---1 | {
---2 |     {"sample.file", nil},
---3 |     {"sample.file", "sample.zip"},
---4 | }
---```
---@param searchpath string
---@param extendname string|nil @可选的文件拓展名，可以匹配拓展名，排除其他文件
---@param packname string|nil @可选的压缩包名，可以指定压缩包搜索
---@return table[] @
function m.FindFiles(searchpath, extendname, packname)
	return {
		{"sample.file", nil},
		{"sample.file", "sample.zip"},
	}
end
