---=====================================
--- luastg 输入
--- author : Xiliusha
--- email  : Xiliusha@outlook.com
---=====================================

---@type lstg
local m = lstg

----------------------------------------
--- 输入获取

---@param vkey number
---@return boolean
function m.GetKeyState(vkey)
end

---@return number @vkey
function m.GetLastKey()
end

---@return number, number
function m.GetMousePosition()
end

---@param index number @0, 1, 2
---@return boolean
function m.GetMouseState(index)
end

--[[
---@return number
function m.GetMouseWheelDelta()
end
--]]
