def profile block_description, &block
  execute = true
  if execute
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
    else
    block.call
    end
end

#next part is a test of above proc

profile 'long and complicated program...' do
  number = 1
  50000.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits!"
end