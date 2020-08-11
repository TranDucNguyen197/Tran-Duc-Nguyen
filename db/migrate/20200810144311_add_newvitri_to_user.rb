class AddNewvitriToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :vitri, :string
  end
end
