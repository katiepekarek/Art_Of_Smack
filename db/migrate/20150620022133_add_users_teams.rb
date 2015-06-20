class AddUsersTeams < ActiveRecord::Migration
  def change
    add_column :users, :teams, :text
  end
end
