-- Connect to wifi with static IP
wifi.setmode(wifi.STATION)
wifi.sta.setip {ip="192.168.1.69", netmask="255.255.255.0", gateway="192.168.1.1"}
wifi.sta.config {ssid="SSID", pwd="password"}
wifi.sta.connect()
print(wifi.sta.getip())
dofile("blink.lua")