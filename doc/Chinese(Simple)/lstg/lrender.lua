---=====================================
--- 渲染方法
--- author : Xiliusha
--- email  : Xiliusha@outlook.com
---=====================================

---@type lstg
local m = lstg

----------------------------------------
--- 图形功能

--- 开始进入渲染状态
function m.BeginScene()
end

--- 结束渲染状态
function m.EndScene()
end

----------------------------------------
--- 摄像机

---@param near number
---@param far number
---@param color lstg.Color
function m.SetFog(near, far, color)
end

--- 设置视口
---@param left number
---@param right number
---@param bottom number
---@param top number
function m.SetViewport(left, right, bottom, top)
end

--- 设置正交摄像机
---@param left number
---@param right number
---@param bottom number
---@param top number
function m.SetOrtho(left, right, bottom, top)
end

--- 设置透视摄像机
---@param x number
---@param y number
---@param z number
---@param atx number
---@param aty number
---@param atz number
---@param upx number
---@param upy number
---@param upz number
---@param fovy number @弧度制视角
---@param aspect number @画面宽高比
---@param zn number
---@param zf number
function m.SetPerspective(x, y, z, atx, aty, atz, upx, upy, upz, fovy, aspect, zn, zf)
end

--[[
---@param status number @0 off, 1 on
function m.SetZBufferEnable(status)
end

---@param value number @depth, default to 1.0
function m.ClearZBuffer(value)
end
--]]

----------------------------------------
--- 画面绘制

--- 使用指定颜色清空视口内的画面
---@param color lstg.Color
function m.RenderClear(color)
end

--- 在矩形区域内渲染画面
---@param imgname string
---@param left number
---@param right number
---@param bottom number
---@param top number
function m.RenderRect(imgname, left, right, bottom, top)
end

---@param imgname string
---@param x number
---@param y number
---@param rot number
---@param hscale number @default to 1.0
---@param vscale number @default to hscale
---@param z number @default to 0.5
function m.Render(imgname, x, y, rot, hscale, vscale, z)
end

---@param imgname string
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param x3 number
---@param y3 number
---@param z3 number
---@param x4 number
---@param y4 number
---@param z4 number
function m.Render4V(imgname, x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4)
end

--- x, y, z, u, v, color
---@class lstg.Vertex
local vertex = {}

---@param texname string
---@param blendmode lstg.BlendMode
---@param v1 lstg.Vertex
---@param v2 lstg.Vertex
---@param v3 lstg.Vertex
---@param v4 lstg.Vertex
function m.RenderTexture(texname, blendmode, v1, v2, v3, v4)
end

----------------------------------------
--- 文字绘制

---@param fntname string
---@param text string
---@param x number
---@param y number
---@param scale number
---@param align number
function m.RenderText(fntname, text, x, y, scale, align)
end

---@param ttfname string
---@param text string
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param scale number
---@param align number
---@param color lstg.Color
function m.RenderTTF(ttfname, text, left, right, bottom, top, scale, align, color)
end

----------------------------------------
--- 离屏渲染

---@param rtname string
function m.PushRenderTarget(rtname)
end

function m.PopRenderTarget()
end

---@param texname string
---@param fxname string
---@param blendmode string
---@param param table @number will bind to float, color will bind to float4, string will bind to texture
function m.PostEffect(texname, fxname, blendmode, param)
end

--[[
function m.PostEffectCapture()
end

---@param fxname string
---@param blendmode string
---@param param table @number will bind to float, color will bind to float4, string will bind to texture
function m.PostEffectApply(fxname, blendmode, param)
end
--]]
