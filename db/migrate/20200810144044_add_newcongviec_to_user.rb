class AddNewcongviecToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :congviec, :string
  end
end
