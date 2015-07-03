def max_product str, n, k
  product = 0
  (0..(n - k)).each do |start|
    numbers = str[start...(start + k)]
    p = numbers.split("").collect(&:to_i).inject(1){|px, x| px * x}
    product = p > product ? p : product
  end
  product
end

total = gets.to_i
total.times do
  n, k = gets.split(" ").collect(&:to_i)
  str  = gets
  puts max_product(str, n, k)
end
