class CreateUserSections < ActiveRecord::Migration
  def change
    create_table :user_sections do |t|
      t.references :user, index: true
      t.references :street_sweeps, index: true
    end
  end
end
