class AddAboutToMoon < ActiveRecord::Migration[6.1]
  def change
    add_column :moons, :about, :text
  end
end
