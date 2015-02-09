class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :uname
      t.string :uemail

      t.timestamps
    end
  end
end
