---=====================================
---luastg 内建对象
---作者:Xiliusha
---邮箱:Xiliusha@outlook.com
---=====================================

----------------------------------------
---lstg.Color

---@class lstg.Color @fcyColor的lua包装
local color={}

---返回颜色的4个分量
---@return number,number,number,number @alpha,red,green,blue
function color:ARGB()
	return 255,255,255,255
end

----------------------------------------
---lstg.Random

---@class lstg.Rand @WELL512随机数发生器
local random={}

---设置随机数发生器的随机数种子
---@param seed number @随机数种子必须是整数
function random:Seed(seed)
end

---获取随机数发生器状态机当前的随机数种子
---@return number @整数
function random:GetSeed()
	return 0
end

---随机获得n1到n2范围内的整数
---@param n1 number @必须是整数
---@param n2 number @必须是整数
---@return number @整数
function random:Int(n1,n2)
	return 0
end

---随机获得f1到f2范围内的浮点数
---@param f1 number
---@param f2 number
---@return number
function random:Float(f1,f2)
	return 0.0
end

---随机地获得正负号，即-1或1
---@return number
function random:Sign()
	return 1
end

----------------------------------------
---lstg.StopWatch

---@class lstg.StopWatch @毫秒级高精度计时器
local stopwatch={}

---重置计时器所有状态
function stopwatch:Reset()
end

---暂停计时，需要注意，lstg.StopWatch计时器对象一创建就开始计时了
function stopwatch:Pause()
end

---从暂停中恢复计时
function stopwatch:Resume()
end

---获取流逝的时间
---@return number @以秒为单位的时间长度
function stopwatch:GetElapsed()
end

----------------------------------------
---lstg.BentLaser

---@class lstg.BentLaser @曲线激光
local bentlaser={}

---更新曲线激光的节点
---@param unit lstg.GameObject
---@param length number @曲线激光的长度（最大节点数量），整数，不能小于1，且曲线激光最大节点数量为512
---@param width number @宽度，不是半宽
---@param active boolean @该节点是否是激活的
function bentlaser:Update(unit, length, width, active)
end

---更新指定节点
---@param unit lstg.GameObject
---@param index number @节点索引，整数，不同于lua，这个索引是c/c++风格索引，从0开始
---@param length number @未使用的参数，但是需要填写大于1的整数
---@param width number @未使用的参数
---@param active boolean @该节点是否是激活的
function bentlaser:UpdateNode(unit, index, length, width, active)
end

---释放曲线激光对象，这将导致对象不再有效
function bentlaser:Release()
end

---渲染曲线激光，曲线激光纹理来自纹理资源的一部分，uv_left，uv_top指定矩形左上角，uv_width，uv_height指定矩形大小
---@param texture string @纹理资源名
---@param blendmode string @混合模式名
---@param color lstg.Color
---@param uv_left number
---@param uv_top number
---@param uv_width number
---@param uv_height number
---@param scale number @曲线激光宽度的缩放默认为1.0
function bentlaser:Render(texture, blendmode, color, uv_left, uv_top, uv_width, uv_height, scale)
end

---将曲线激光与给定的数据进行碰撞检测
---@param x number
---@param y number
---@param rot number
---@param a number
---@param b number
---@param rect boolean
---@return boolean
function bentlaser:CollisionCheck(x, y, rot, a, b, rect)
	return false
end

---渲染曲线激光的碰撞体
---@param color lstg.Color
function bentlaser:RenderCollider(color)
end

---将曲线激光与给定的数据进行碰撞检测，曲线激光的宽度将被替换成参数width
---@param x number
---@param y number
---@param rot number
---@param a number
---@param b number
---@param rect boolean
---@param width number @宽度，不是半宽
---@return boolean
function bentlaser:CollisionCheckWidth(x, y, rot, a, b, rect, width)
	return false
end

---检查曲线激光是否离开场景边界
---@return boolean
function bentlaser:BoundCheck()
	return false
end

---对曲线激光进行等长采样，返回采样数据
---@param length number
---@return table[] @带有x、y、rot成员的table
function bentlaser:SampleByLength(length)
	return {{x=0,y=0,rot=0},}
end

---对曲线激光进行等长时间采样（单位为帧），返回采样数据
---@param time number @整数
---@return table[] @带有x、y、rot成员的table
function bentlaser:SampleByTime(time)
	return {{x=0,y=0,rot=0},}
end

---根据一个对象表更新曲线激光的位置
---@param units lstg.GameObject[]|table[] @对象组，可以是带有x、y成员的table，也可以是lstg.GameObject，最大数量不超过512
---@param length number @第一个参数里面含有的对象数
---@param width number @宽度，不是半宽
---@param index number @索引初始位置
---@param revert boolean @反向索引
function bentlaser:UpdatePositionByList(units, length, width, index, revert)
end

---更改曲线激光的宽度
---@param width number @宽度，不是半宽
function bentlaser:SetAllWidth(width)
end
