-- 使用方法：在珍珠的局部脚本里新建一个，清空默认的内容，然后把这个（整个）都复制进去
local Tpegg_items = {}
ScriptSupportEvent:registerEvent("Missile.Create",function (e)
    Tpegg_items[e.toobjid] = e.eventobjid
end)
ScriptSupportEvent:registerEvent("Actor.Projectile.Hit",function (e)
    --传送
    Player:setPosition(Tpegg_items[e.eventobjid],e.x,e.y + 1,e.z)
end)
