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
end
