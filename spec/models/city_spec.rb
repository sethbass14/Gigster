require 'rails_helper.rb'
describe City do
  let(:nyc) { City.create(name: "New York City") }
  let(:seth) {User.create(first_name: "Seth", last_name: "Barden", age: 31, bio: "A guy", city_id: nyc.id)}

  it "has a name " do
    expect(nyc.name).to eq("New York City")
  end

  # it "has many musicians" do
  #   expect(nyc.musicians).to include(seth)
  # end


end
