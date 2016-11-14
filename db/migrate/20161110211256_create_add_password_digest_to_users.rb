class CreateAddPasswordDigestToUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :add_password_digest_to_users do |t|
      t.string :password_digest

      t.timestamps
    end
  end
end
