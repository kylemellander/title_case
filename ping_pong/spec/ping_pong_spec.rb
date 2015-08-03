require("rspec")
require('ping_pong')

describe('Fixnum#ping_pong') do
  it("counts up to the number inputed") do
    expect(3.ping_pong()).to(eq("123"))
  end

  it("converts multiples of 3 to ping") do
    expect(3.ping_pong()).to(eq("12ping"))
  end

  it("converts multiples of 5 to pong") do
    expect(10.ping_pong()).to(eq("12ping4pongping78pingpong"))
  end
end
