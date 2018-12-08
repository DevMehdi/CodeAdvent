current_frequency = 0

File.open("./input.txt", "r") do |file|
  file.each_line do |line|
    current_frequency += line.to_i
  end
end

puts current_frequency
