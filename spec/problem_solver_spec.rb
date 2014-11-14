require 'problem_solver'
require 'benchmark'

RSpec.describe ProblemSolver do
  context 'problem 1' do
    it 'adds multiples of 3 and 5 below 10' do
      expect(ProblemSolver.one(10)).to equal 23
    end

    it 'adds multiples of 3 and 5 below 1000' do
      expect(ProblemSolver.one(1000)).to equal 233168
    end
  end

  context 'problem 2' do
    it 'finds the sum of the even fibonacci terms below 5' do
      expect(ProblemSolver.two(5)).to equal 2
    end
    
    it 'finds the sum of the even fibonacci terms below 10' do
      expect(ProblemSolver.two(10)).to equal 10
    end

    it 'finds the sum of the even fibonacci terms below 100' do
      expect(ProblemSolver.two(100)).to equal 44
    end

    it 'finds the sum of the even fibonacci terms below 4,000,000' do
      expect(ProblemSolver.two(4_000_000)).to equal 4613732
    end
  end
end

RSpec.describe Fibonacci do
  let(:fib) { Fibonacci.new(1,2) }

  describe '#terms_below' do
    context 'terms' do
      it 'returns terms below 1' do
        expect(fib.terms_below(1)).to match []
      end

      it 'returns terms below 2' do
        expect(fib.terms_below(2)).to match [1]
      end

      it 'returns term below 10' do
        expect(fib.terms_below(10)).to match [1, 2, 3, 5, 8]
      end

      it 'returns term below 100' do
        expect(fib.terms_below(100)).to match [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
      end
    end

    context 'runtime' do
      let(:time) { Benchmark.realtime{fib.terms_below(4_000_000)} }

      it 'returns term below 4,000,000 in less than 60 seconds' do
        expect(time < 60).to be true
      end
    end
  end
end