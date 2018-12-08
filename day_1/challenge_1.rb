input = File.readlines('input.txt').map(&:to_i)
current_frequency = 0

input.each do |val|
  current_frequency += val.to_i
end

puts current_frequency
