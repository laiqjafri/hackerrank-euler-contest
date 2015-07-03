def even_sum n
  _prev = 0
  _next = 1
  sum = 0

  while _next < n
    _sum = _prev + _next
    _prev = _next
    _next = _sum

    if _next % 2 == 0 and _next < n
      sum += _next
    end
  end
  sum
end

total = gets.to_i
(1..total).each do
  puts even_sum(gets.to_i)
end
