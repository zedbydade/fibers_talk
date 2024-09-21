sum = 0
threads = []

10.times do
  threads << Thread.new do
    1000.times do
      sum += 1
    end
  end
end

threads.each(&:join)

puts "Final sum: #{sum}"
