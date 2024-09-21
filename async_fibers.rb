require 'faraday'
require 'logger'

logger = Logger.new($stdout)
api = Faraday.new('https://httpbin.org')

delay_3 = Fiber.new do 
  logger.info "Delay 3: Starting"
  Fiber.yield api.get('/delay/3')
end

delay_4 = Fiber.new do 
  logger.info "Delay 4: Starting"
  Fiber.yield api.get('/delay/4')
end

fiber_1 = delay_3.resume.status
logger.info fiber_1
fiber_2 = delay_4.resume.status
logger.info fiber_2
