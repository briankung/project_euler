three_digits = (100..999)

products = three_digits.map do |x|
  three_digits.map {|y| x*y}
end.flatten

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

products.select {|p| palindrome? p }.max