class AddNewmasothueToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :masothue, :string
  end
end
