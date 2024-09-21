require 'faraday'
require 'logger'
require 'async'

logger = Logger.new($stdout)
api = Faraday.new('https://httpbin.org')

logger.info "Main: Starting program"
Async do   
  delay_3 = Async do
    api.get('/delay/3')
  end

  delay_4 = Async do
   api.get('/delay/3')
  end

  logger.info "(Main) first return #{delay_3.wait.status}"
  logger.info "(Main) second return #{delay_4.wait.status}"
end
