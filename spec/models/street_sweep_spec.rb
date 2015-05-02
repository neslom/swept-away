require "rails_helper"

RSpec.describe "StreetSweep" do
  describe ".sections_by_ward" do
    xit "returns an array of sections associated with a particular ward" do
      sweep1 = create(:street_sweep)
      sweep2 = create(:street_sweep, section: "09")

      expect(StreetSweep.sections_by_ward(sweep1.ward_id)).to eq([sweep1.section])
      expect(StreetSweep.sections_by_ward(sweep1.ward_id)).to_not eq([sweep2.section])
    end
  end

  describe ".schedules" do
    xit "returns  an arraay of instances of StreetSweep that match the ward_id and section" do
      sweep = create(:street_sweep)

      expect(StreetSweep.schedules(sweep.ward_id, sweep.section)).to eq([sweep])
    end
  end

  describe "#print_days" do
    xit "seperates the dates for readability" do
      ss = create(:street_sweep)

      expect(ss.print_days).to eq("1st and 7th")
    end

    xit "returns 'No data' if there is no date data" do
      ss = create(:street_sweep, dates: nil)

      expect(ss.print_days).to eq("No data")
    end
  end

  describe "#print_month" do
    xit "seperates the dates for readability" do
      ss = create(:street_sweep)

      expect(ss.print_month).to eq("April")
    end

    xit "returns 'No data' if there is no date data" do
      ss = create(:street_sweep, month: nil)

      expect(ss.print_month).to eq("No data")
    end
  end
end
