def square_of_sum num
  sum = (num * (num + 1)) / 2
  sum * sum
end

def sum_of_squares num
  (1..num).inject(0){|s, n| s + (n * n)}
end

def difference_of_sums num
  square_of_sum(num) - sum_of_squares(num)
end

total = gets.to_i
total.times do
  puts difference_of_sums(gets.to_i)
end
