---=====================================
--- luastg 音频系统
--- author : Xiliusha
--- email  : Xiliusha@outlook.com
---=====================================

---@type lstg
local m = lstg

----------------------------------------
--- 音效

---@alias lstg.AudioStatus string | '"playing"' | '"paused"' | '"stopped"'

---@param sndname string
---@param volume number @[[0, 1]]
---@param pan number @[[-1, 1]]
function m.PlaySound(sndname, volume, pan)
end

---@param sndname string
function m.StopSound(sndname)
end

---@param sndname string
function m.PauseSound(sndname)
end

---@param sndname string
function m.ResumeSound(sndname)
end

---@param sndname string
---@return lstg.AudioStatus
function m.GetSoundState(sndname)
end

---@param volume number @[[0, 1]]
function m.SetSEVolume(volume)
end

----------------------------------------
--- 背景音乐

---@param bgmname string
---@param volume number @[[0, 1]]
---@param position number @in second
function m.PlayMusic(bgmname, volume, position)
end

---@param bgmname string
function m.StopMusic(bgmname)
end

---@param bgmname string
function m.PauseMusic(bgmname)
end

---@param bgmname string
function m.ResumeMusic(bgmname)
end

---@param bgmname string
---@return lstg.AudioStatus
function m.GetMusicState(bgmname)
end

---@param volume number @[[0, 1]]
---@overload fun(bgmname:string, volume:number)
function m.SetBGMVolume(volume)
end
