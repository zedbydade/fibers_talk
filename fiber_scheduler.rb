require 'faraday'

api = Faraday.new('https://httpbin.org')

class TuTuScheduler 
  def io_wait(io, events, timeout)
    p "tu-tu-ru!"
    exit!
  end

  def block = nil; def unblock = nil;
  def kernel_sleep = nil;
end

Fiber.set_scheduler TuTuScheduler.new
