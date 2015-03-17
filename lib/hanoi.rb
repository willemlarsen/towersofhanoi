def hanoi_solution(stack_height)
  move_n_discs(stack_height, {from: 1, to: 3})
end

def move_n_discs(n, from_to)
  return [from_to] if n == 1

  oneLessThatIsCurrentlyOne = n - 1 # equals one because test n = 2
  sparePeg = getSparePeg(from_to)
  move_n_discs(oneLessThatIsCurrentlyOne, {from: 1, to: sparePeg}) + # [{from: 1, to: 2}]
  move_n_discs(1, {from: 1, to: 3}) +                         # [{from: 1, to: 3}]
  move_n_discs(oneLessThatIsCurrentlyOne, {from: sparePeg, to: 3})   # [{from: 2, to: 3}]
end

def getSparePeg(from_to)
 mentioned_pegs = from_to.values
 ([1, 2, 3] - mentioned_pegs).first
end
