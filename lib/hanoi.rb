def hanoi_solution(stack_height)
  move_n_discs(stack_height, {from: 1, to: 3})
end

def move_n_discs(n, from_to)
  return [from_to] if n == 1
  [{from: 1, to: 2},
  {from: 1, to: 3},
  {from: 2, to: 3}]
end
