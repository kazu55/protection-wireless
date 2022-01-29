local component = require("component")
local event = require("event")
local modem = component.modem

while true do--ずっと続く
    _, _, pressed = event.pull("key_down")--もし何らかのキーを押すと
    if pressed == 115 then--(pressedから)もしSキーを押したら
        modem.broadcast(595, "emergency_broadcast")--(modemから)防護送信
    end
end