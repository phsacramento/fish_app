class CreateFish < ActiveRecord::Migration[5.1]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :origin
      t.string :color

      t.timestamps
    end
  end
end
