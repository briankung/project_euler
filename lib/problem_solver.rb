class ProblemSolver
  def self.one(number)
    (1...number).select {|n| n%3 == 0 || n%5 == 0}.inject(&:+)
  end

  def self.two(number)
    Fibonacci.new(1,2).terms_below(number).select(&:even?).inject(&:+)
  end
end

class Fibonacci
  attr_reader :seeds

  def initialize(*seeds)
    @seeds = seeds
    @terms = [] + seeds
  end

  def terms_below(limit)
    return terms(limit) if terms(limit).size < 2
    add_terms(limit)
  end

  def add_terms(limit)
    loop do
      next_term = terms[-1] + terms[-2]
      break if next_term > limit
      terms << next_term
    end
    terms
  end

  def terms(limit=nil)
    limit ? @terms.select {|t| t<limit} : @terms
  end
end