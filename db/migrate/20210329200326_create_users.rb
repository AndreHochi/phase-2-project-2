class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :reward_points
      t.float :balance
      t.string :profile_picture, :default => "https://i.pinimg.com/originals/3b/17/fe/3b17fe518d484d23e5da184f25327fa1.jpg"

      t.timestamps
    end
  end
end
