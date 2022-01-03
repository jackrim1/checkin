# == Schema Information
#
# Table name: locations
#
#  id          :bigint           not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Location, type: :model do

  it "allows a user to join a location" do
    user = create(:user)
    location = create(:location)
    location.join(user.id)
    expect(location.users.first).to eq user
    expect(user.locations.first).to eq location
  end

  it "allows a user to leave a location" do
    user = create(:user)
    location = create(:location)
    location.join(user.id)
    location.leave(user.id)
    expect(location.users.first).to_not eq user
    expect(user.locations.first).to_not eq location
  end

  
  
end
