class AddUserReferencesToTuite < ActiveRecord::Migration[6.1]
  def change
    add_column :tuites, :user_id, :integer
  end
end
