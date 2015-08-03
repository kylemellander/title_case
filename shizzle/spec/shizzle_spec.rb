require("rspec")
require("shizzle")

describe("String#shizzle") do
  it("returns a string as is if it returns no s's") do
    expect("hello".shizzle()).to(eq("hello"))
  end

  it("turns each s into a z") do
    expect("shissle".shizzle()).to(eq("shizzle"))
  end

  it('does NOT replace the first letter when it is an s') do
    expect("sunshine".shizzle).to(eq("sunzhine"))
  end

  it('replaces letters correctly in a string of words') do
    expect("moses supposes his toeses are roses".shizzle()).to(eq("mozez suppozez hiz toezez are rozez"))
  end

  it('makes correct replacements regardless of case') do
    expect("Mrs. McSweet's street is AStoria Street!".shizzle()).to(eq("Mrz. McZweet'z street iz AZtoria Street!"))
  end

end
