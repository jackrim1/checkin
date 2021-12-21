class AddAdminToMembership < ActiveRecord::Migration[7.0]
  def change
    add_column :memberships, :admin, :boolean, default: false
  end
end
