RSpec.describe FizzBuzz::Game do
  it "see plain_numbers(1,4)" do
    expect(FizzBuzz::Game.new.display_plain_number(1, 4)).to eq("1,2,3,4")
  end

  it "see plain_numbers(10,15)" do
    expect(FizzBuzz::Game.new.display_plain_number(10, 15)).to eq("10,11,12,13,14,15")
  end

  it "see plain_numbers('2',12)" do
    expect(FizzBuzz::Game.new.display_plain_number('2', 12)).to eq("Not accepted numbers")
  end

  it "see plain_numbers(2, 23.2)" do
    expect(FizzBuzz::Game.new.display_plain_number(2, 23.2)).to eq("Not accepted numbers")
  end
end