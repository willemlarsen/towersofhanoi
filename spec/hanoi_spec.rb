require "./lib/hanoi"

describe "A solver for the Towers Of Hanoi problem" do
  it "can solve the problem for a one-disk high stack" do
    expect(hanoi_solution(1)).to eq([{from: 1, to: 3}])
  end

  it "can solve the problem for a two-disc high stack" do
    expect(hanoi_solution(2)).to eq([
      {from: 1, to: 2},
      {from: 1, to: 3},
      {from: 2, to: 3}])
  end
end
