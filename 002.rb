@numbers = [1]

def fib
  @numbers << @numbers[-1] + (@numbers[-2] || 1)
end

while @numbers[-1] < 4_000_000
  fib
end

@numbers.select(&:even?).inject(&:+)