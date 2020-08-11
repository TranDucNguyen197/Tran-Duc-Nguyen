class AddNewthoigianToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :thoigian, :date
  end
end
