require 'problem_solver'

RSpec.describe ProblemSolver do
  context 'problem 1' do
    it 'adds multiples of 3 and 5 below 10' do
      expect(ProblemSolver.one(10)).to equal 23
    end

    it 'adds multiples of 3 and 5 below 1000' do
      expect(ProblemSolver.one(1000)).to equal 233168
    end
  end
end