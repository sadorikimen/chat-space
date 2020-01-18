class AddUserIdToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :group_id, :string
  end
end
