class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :provider
      t.text :image_url
      t.text :uid
      t.text :token

      t.timestamps null: false
    end
  end
end
