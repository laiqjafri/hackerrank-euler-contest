def multiples_of number, before
  (0...before).step(number).collect{|m| m}
end

total = gets.to_i
total.times do
  before = gets.to_i
  sum = (multiples_of(3, before) | multiples_of(5, before)).inject(0){|sum, x| sum + x}
  puts sum
end
