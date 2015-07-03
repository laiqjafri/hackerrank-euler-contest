require 'prime'

total  = gets.to_i
arr    = total.times.collect{ gets.to_i }
max    = arr.max

primes = Prime.first(max)

arr.each do |num|
  puts primes[num-1]
end
