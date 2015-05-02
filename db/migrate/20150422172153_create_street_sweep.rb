class CreateStreetSweep < ActiveRecord::Migration
  def change
    create_table :street_sweeps do |t|
      t.text :ward_section
      t.text :dates
      t.text :month
    end
  end
end
