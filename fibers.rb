def talk 
  p "(Talk) First Print"
  Fiber.yield 1

  p "(Talk) Second Print"
  Fiber.yield 2
end

puts "(Main) Main file"

fiber = Fiber.new { talk }
fiber_return = fiber.resume
p "(Main) first return #{fiber_return}"
fiber_return = fiber.resume 
p "(Main) second return #{fiber_return}"
