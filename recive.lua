comp = require("computer")
os = require("os")
event = require("event")
component = require("component")
modem = component.modem
sleep = os.sleep

modem.open(595)
while true do
  recive_address, send_address, _, port, distant, message = event.pull("modem_message")
  if port == 595 and distant < 1200 and  message == "emergency_broadcast" then
    print("recived!")
    comp.beep(2000)
    sleep(0)
  else
    return
  end
  sleep(0)
end