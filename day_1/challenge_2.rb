require 'set'

freq_list = File.readlines('input.txt').map(&:to_i)

current_frequency = 0
reached_frequencies = Set.new

freq_list.cycle do |f|
  current_frequency += f
  unless reached_frequencies.add?(current_frequency)
    puts current_frequency
    break
  end
end
