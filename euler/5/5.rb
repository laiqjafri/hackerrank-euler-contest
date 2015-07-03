total = gets.to_i
total.times do
  num = gets.to_i
  puts (1..num).to_a.inject(:lcm)
end
