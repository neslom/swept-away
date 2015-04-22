class CreateStreetSweep < ActiveRecord::Migration
  def change
    create_table :street_sweeps do |t|
      t.text :ward_id
      t.text :dates
      t.text :month
      t.text :section
    end
  end
end
