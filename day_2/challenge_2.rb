input = File.readlines('input.txt')

input.each_with_index do |line, i|
  input[i + 1..input.size].each do |inner_line|
    diff = line.each_char.with_index.count do |char, j|
      char != inner_line.chars[j]
    end

    puts [line, inner_line] if diff == 1
  end
end
