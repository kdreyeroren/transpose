require_relative "transpose"

RSpec.describe "transpose" do

  it "moves a note up a whole step correctly" do
    expect(transpose_up("C", "Major 2nd")).to eq "D"
  end

end
