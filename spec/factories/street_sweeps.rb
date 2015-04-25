FactoryGirl.define do
  factory :street_sweep do
    ward_id { "#{rand(1..100)}" }
    dates "1,7"
    month "4"
    section "01"
  end
end
