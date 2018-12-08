input = File.readlines('input.txt')

two_times = 0
three_times = 0

input.each do |line|
  chars = line.strip.split('')
  occurs_two_times = false
  occurs_three_times = false

  chars.each do |c|
    occurs_two_times = true if line.count(c) == 2
    occurs_three_times = true if line.count(c) == 3
  end

  two_times += 1 if occurs_two_times
  three_times +=1 if occurs_three_times
end

puts (two_times * three_times)
