require("rspec")
require("shizzle")

describe("String#shizzle") do
  it("returns a string as is if it returns no s's") do
    expect("hello".shizzle()).to(eq("hello"))
  end
end
