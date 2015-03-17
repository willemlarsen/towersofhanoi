describe "A solver for the Towers Of Hanoi problem" do
  it "can solve the problem for a one-disk high stack" do
    expect(hanoi_solution(1)).to eq([{from: 1, to: 3}])
  end
end
