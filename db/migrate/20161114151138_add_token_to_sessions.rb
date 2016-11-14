class AddTokenToSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :token, :string
  end
end
