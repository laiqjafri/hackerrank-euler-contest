def all_pythagorean_triplets
  triplets = {}
  (1..3000).each do |x| 
    (1..3000).each do |y| 
      square = (x*x) + (y*y)
      sqrt = Math.sqrt(square)
      if sqrt % 1 == 0
        sum = x + y + sqrt.to_i
        product = x * y * sqrt.to_i
        if triplets[sum].nil?
          triplets[sum] = product
        else
          old_product = triplets[sum]
          if old_product < product
            triplets[sum] = product
          end 
        end 
      end 
    end 
  end 
  triplets
end

triplets = all_pythagorean_triplets
total = gets.to_i
total.times do
  num = gets.to_i
  if triplets[num].nil?
    puts -1
  else
    puts triplets[num]
  end
end
