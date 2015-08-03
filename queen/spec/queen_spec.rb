require("rspec")
require("queen")

describe("Array#queen") do
  it("Gives true if queen can attack horizontally") do
    expect([1,8].queen?([4,8])).to(eq(true))
  end

  it("Gives true if queen can attack vertically") do
    expect([2,5].queen?([2,7])).to(eq(true))
  end
end
