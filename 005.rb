@range = 1..20

maximum = @range.inject(&:*)

def remainders_to_twenty(number)
  @range.map {|i| number%i}
end

i = 2520

until remainders_to_twenty(i).uniq == [0] || i == maximum
  i += 2520
  puts i
end