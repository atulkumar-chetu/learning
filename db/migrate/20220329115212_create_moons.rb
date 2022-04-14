class CreateMoons < ActiveRecord::Migration[6.1]
  def change
    create_table :moons do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
