---=====================================
---luastg 基础 Lua 用户接口
---lstg 库
---作者:Xiliusha
---邮箱:Xiliusha@outlook.com
---=====================================

---@class lstg @lstg库
lstg={}

---初始化方法，仅在launch文件内生效，运行时调用该方法将会触发警告消息；
---设置游戏是否窗口化显示；
---默认设置为true，即窗口化显示；
---@param boolean windowed @为true时游戏初始化完成后将会以窗口化的方式显示游戏画面，否则以全屏的方式显示
function lstg.SetWindowed(windowed)
end
