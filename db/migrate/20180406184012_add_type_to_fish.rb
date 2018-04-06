class AddTypeToFish < ActiveRecord::Migration[5.1]
  def change
    add_column :fish, :type, :string
  end
end
