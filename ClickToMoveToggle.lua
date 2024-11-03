local frame = CreateFrame("Frame")

   local function OnEvent(self, event)
       if event == "PLAYER_REGEN_DISABLED" then
           -- Входим в бой
           SetCVar("autointeract", 0) -- Отключаем движение по клику
       elseif event == "PLAYER_REGEN_ENABLED" then
           -- Выходим из боя
           SetCVar("autointeract", 1) -- Включаем движение по клику обратно
       end
   end

   frame:RegisterEvent("PLAYER_REGEN_DISABLED")
   frame:RegisterEvent("PLAYER_REGEN_ENABLED")
   frame:SetScript("OnEvent", OnEvent)