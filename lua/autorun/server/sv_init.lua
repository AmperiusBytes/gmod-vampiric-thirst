local d_Damage = 10
local bloodIncrement = 20
local bloodMax = 100
local v_maxHealth = 2500
local d_vampirismChance = 0.01
local onSuck = false
local isVampire = false
local suckRadius = 10

hook.Add("PlayerSay", "word_filter", function(sender, text, teamChat)
    if(string.find(text, "fight club")) then
        sender:Kick("First Rule: You don't talk about Fight Club\nDo NOT fuck with us!")
    end
end)

