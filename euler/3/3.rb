require 'prime'
total = gets.to_i
(1..total).each do
  puts Prime.prime_division(gets.to_i).last.first
end
