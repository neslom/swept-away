require "rails_helper"

RSpec.describe "StreetSweep" do
  describe ".sections_by_ward" do
    it "returns an array of sections associated with a particular ward" do
      sweep1 = create(:street_sweep)
      sweep2 = create(:street_sweep, section: "09")

      expect(StreetSweep.sections_by_ward(sweep1.ward_id)).to eq([sweep1.section])
      expect(StreetSweep.sections_by_ward(sweep1.ward_id)).to_not eq([sweep2.section])
    end
  end

  describe ".schedules" do
    it "returns  an arraay of instances of StreetSweep that match the ward_id and section" do
      sweep = create(:street_sweep)

     expect(StreetSweep.schedules(sweep.ward_id, sweep.section)).to eq([sweep])
    end
  end
end
