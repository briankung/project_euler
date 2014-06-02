@range = 1..10

maximum = @range.inject(&:*)

def remainders_to_twenty(number)
  @range.map {|i| number%i}
end

i = 1

until remainders_to_twenty(i).uniq == [0] || i == maximum
  i += 1
  puts i
end