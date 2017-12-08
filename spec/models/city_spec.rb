describe City do
  let(:nyc) { City.create(name: "New York City") }

  it "has a name " do
    expect(nyc.name).to eq("New York City")
  end
end
