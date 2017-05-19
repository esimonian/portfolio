class AddRolesToUsers < ActiveRecord::Migration[5.1]
    add_column :users, :roles, :string
end
