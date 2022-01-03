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
class Location < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships

  def join(user_id)
    Membership.create(location_id: self.id, user_id: user_id)
  end

  def leave(user_id)
    Membership.find_by(location_id: self.id, user_id: user_id).destroy
  end

end
