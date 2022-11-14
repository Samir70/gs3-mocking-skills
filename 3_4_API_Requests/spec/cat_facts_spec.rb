require "cat_facts"

RSpec.describe CatFacts do
  it "gets a fact pertaining to felines" do
    req = double(:fake_source)
    cf = CatFacts.new(req)
    expect(req).to receive(:get)
                     .with(URI("https://catfact.ninja/fact"))
                     .and_return('{"fact":"The lightest cat on record is a blue point Himalayan called Tinker Toy, who weighed 1 pound, 6 ounces (616 g). Tinker Toy was 2.75 inches (7 cm) tall and 7.5 inches (19 cm) long.","length":178}')
    expect(cf.provide).to eq "Cat fact: The lightest cat on record is a blue point Himalayan called Tinker Toy, who weighed 1 pound, 6 ounces (616 g). Tinker Toy was 2.75 inches (7 cm) tall and 7.5 inches (19 cm) long."
  end
end
