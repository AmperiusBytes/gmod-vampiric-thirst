ply = LocalPlayer()
local healthHeight = 300
local HealthContainer = {
    x = ScrW()*0.025,
    y = ScrH() - healthHeight - 20,
    width = 35
}
local hide = {
    ["CHudHealth"] = true,
    ["CHudBattery"] = true,
    ["CHudAmmo"] = true,
    ["CHudSecondaryAmmo"] = true
}

hook.Add("HUDShouldDraw", "vampire_vision_remove", function(name)
    if(hide[name]) then
        return false
    end
end)

/*WAIT UNTIL PLAYER IS FULLY LOADED*/

hook.Add("HUDPaint", "vampire_vision_draw", function()
        if(ply == NULL) then
            ply = LocalPlayer()
        end
        draw.RoundedBox(16, HealthContainer.x - 6, HealthContainer.y - 10, HealthContainer.width + 12, healthHeight + 15, Color(20, 0, 0, 250))
        draw.RoundedBoxEx(16, HealthContainer.x, HealthContainer.y + healthHeight - healthHeight*ply:Health()/ply:GetMaxHealth(), HealthContainer.width, healthHeight*ply:Health()/ply:GetMaxHealth(), Color(200, 3, 3), false, false, true, true)
end)