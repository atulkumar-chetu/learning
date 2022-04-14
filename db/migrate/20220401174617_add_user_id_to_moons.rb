class AddUserIdToMoons < ActiveRecord::Migration[6.1]
  def change
    add_column :moons, :user_id, :integer
  end
end
