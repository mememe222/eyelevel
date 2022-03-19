class AddUserIdToArts < ActiveRecord::Migration[6.0]
  def change
    add_column :arts, :user_id, :integer
  end
end
