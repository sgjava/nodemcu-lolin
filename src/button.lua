-- button on D1 and led on D2
local button, led, value, last_value = 1, 2, 1, 1

-- No fancy debounce logic required
function button_cb()
  value = gpio.read(button)
  -- Ignore value unless it changed
  if value ~= last_value then
    print('Pin value: '.. value)
    gpio.write(led, value)
    last_value = value
  end
end

gpio.mode(led,gpio.OUTPUT)
gpio.write(led, gpio.HIGH)
gpio.mode(button, gpio.INT, gpio.PULLUP)
gpio.trig(button, "both", button_cb)
