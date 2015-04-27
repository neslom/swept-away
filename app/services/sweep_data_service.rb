class SweepDataService
  def initialize
    @response = Faraday.get('https://data.cityofchicago.org/resource/waad-z968.json')
  end

  def json_response
    JSON.parse(@response.body)
  end

  def populate_table
    json_response.each do |data|
      StreetSweep.create(ward_id: data["ward"],
                         dates: data["dates"],
                         month: data["month_number"],
                         section: data["section"])
    end
  end
end
