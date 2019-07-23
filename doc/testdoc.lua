


























local zip = lstg.FileManager.LoadArchive("test.zip",0)
local result = zip:IsValid()
local exist = zip:FileExist("sample/test.txt")
local list1 = zip:EnumFiles("sample/")
local list2 = zip:ListFiles()
local zipname = zip:GetName()
local priority = zip:GetPriority()
zip:SetPriority(1145141919)

local FMGR = lstg.FileManager
local flist1 = FMGR.EnumFilesEx("sampledir/")
local flist2 = FMGR.EnumFilesEx("sampledir2/", "txt")
