class AddNewtenToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ten, :string
  end
end
