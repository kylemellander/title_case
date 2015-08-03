require("rspec")
require("queen")

describe("Array#queen") do
  it("Gives true if queen can attack horizontally") do
    expect([1,8].queen?([4,8])).to(eq(true))
  end

end
