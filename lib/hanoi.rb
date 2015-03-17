def hanoi_solution(stack_height)
  move_n_discs(stack_height, {from: 1, to: 3})
end

def move_n_discs(n, from_to)
  [from_to]
end
