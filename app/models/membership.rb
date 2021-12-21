# == Schema Information
#
# Table name: memberships
#
#  id          :bigint           not null, primary key
#  admin       :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_memberships_on_location_id  (location_id)
#  index_memberships_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (location_id => locations.id)
#  fk_rails_...  (user_id => users.id)
#
class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :location
end
