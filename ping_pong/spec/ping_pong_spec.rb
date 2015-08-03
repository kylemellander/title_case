require("rspec")
require("ping_pong")

describe('FixNum#ping_pong') do
  it("counts up to the number inputed") do
    expect(3.ping_pong()).to(eq("123"))
  end
end
