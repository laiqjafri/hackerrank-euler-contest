def all_numbers
  numbers = []
  (100..999).each do |x| 
    (100..999).each do |y| 
      numbers << (x * y)
    end 
  end 
  numbers.sort.reverse
end

def largest_palindrome number, all
  all.each do |x| 
    return x if x < number and is_palindrome?(x)
  end 
  return 0
end

def is_palindrome? x
  x.to_s == x.to_s.reverse
end

all = all_numbers
total = gets.to_i
total.times do
  puts largest_palindrome gets.to_i, all
end
