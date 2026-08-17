-- ================================================
-- FIREBASE.LUA - DUMMY BYPASS (No Tracker, No DB)
-- ================================================

local Firebase = {}

-- ==================== DUMMY FUNCTIONS ====================
function Firebase.GetData(path) return nil end
function Firebase.SetData(path, data) return true end
function Firebase.PatchData(path, data) return true end
function Firebase.PushData(path, data) return "-DummyKey123" end
function Firebase.DeleteData(path) return true end

function Firebase.fmtRemaining(secs, isPermanent)
    return "Permanen (Bypass Aktif)"
end

-- ==================== KEY SYSTEM BYPASS ====================
function Firebase.ValidateKey(key, userId, playerDisplayName, playerUsername)
    return true, "Selamat datang! Bypass Premium Aktif."
end

function Firebase.CheckSavedKey(userId, savedKeyHint)
    return true
end

function Firebase.GetKeyTimeRemaining(userId, savedKeyHint)
    return 4102444800
end

function Firebase.GetFullKeyInfo(userId)
    return {
        ok           = true,
        key          = "BYPASSED",
        remaining    = 4102444800,
        expiresAt    = 4102444800,
        durationLabel= "Permanen",
        duration     = "permanent",
        totalSecs    = 4102444800,
        ratio        = 1,
        isPermanent  = true,
        playerName   = game:GetService("Players").LocalPlayer.DisplayName,
        playerUsername = game:GetService("Players").LocalPlayer.Name,
        usedBy       = tostring(userId),
        message      = "Bypass Premium Aktif",
    }
end

-- ==================== FAKE ONLINE SYSTEM ====================
function Firebase.SetOnline(userId, playerData) return true end
function Firebase.RemoveOnline(userId) return true end
function Firebase.GetOnlinePlayers() return {} end

-- ==================== FAKE CHAT & NOTIF ====================
function Firebase.SendChat(...) return true end
function Firebase.GetChats() return {} end
function Firebase.GetNotifications(userId) return nil end
function Firebase.DeleteNotification(userId, notifId) return true end
function Firebase.ClearNotifications(userId) return true end

-- ==================== COMMAND QUEUE ====================
function Firebase.GetCommands(userId) return nil end
function Firebase.DeleteCommand(userId, cmdId) return true end
function Firebase.PushCommand(userId, cmdData) return "-CmdKey" end

-- ==================== SAVED DATA ====================
function Firebase.GetLocations() return nil end
function Firebase.SaveLocation(...) return true end
function Firebase.DeleteLocation(...) return true end
function Firebase.SaveAvatarSnapshot(...) return "-AvKey" end
function Firebase.GetSavedAvatars(devUserId) return {} end
function Firebase.DeleteSavedAvatar(...) return true end
function Firebase.RenameSavedAvatar(...) return true end

-- ==================== GATE AKSES PREMIUM.LUA ====================
function Firebase.IsPermanentUser(userId)
    return true 
end

return Firebase