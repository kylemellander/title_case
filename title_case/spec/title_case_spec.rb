require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of each word") do
    expect(("lebowski").title_case()).to(eq("Lebowski"))
  end

  it("capitalizes multiple words in a string") do
    expect(("the big lebowski").title_case()).to(eq("The Big Lebowski"))
  end

  it("doesn't capitalize prepositions") do
    expect(("dizzy the girl").title_case()).to(eq("Dizzy the Girl"))
  end

  it("capitalize a preposition if first word in title") do
    expect(("the big lebowski").title_case()).to(eq("The Big Lebowski"))
  end

  it("changes mixed case words into uniform style") do
    expect(("the bIg LebOwSki").title_case()).to(eq("The Big Lebowski"))
  end

  it("capitalizes 3rd letter in names that start with Mc") do
    expect(("mark mcgwire").title_case()).to(eq("Mark McGwire"))
  end

end
