number = 600_851_475_143

factors = (1..775147).select {|i| number%i==0 }

def prime?(number)
  divisors = 2...number
  divisors.each do |divisor|
    return false if number%divisor == 0
  end
  true
end

prime_factors = factors.select do |factor| 
  # Select the factors which are not evenly divisible by 2 through the factor-1
  prime? factor
end

prime_factors.last