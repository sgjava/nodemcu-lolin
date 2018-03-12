-- Blink using timer alarm --
timerId = 0
dly = 1000
-- use D1
ledPin = 1
-- set mode to output
gpio.mode(ledPin,gpio.OUTPUT)
ledState = 0
-- timer loop
tmr.alarm( timerId, dly, 1, function()
  ledState = 1 - ledState;
  -- write state to D1
  gpio.write(ledPin, ledState)
end)
