FactoryGirl.define do
  factory :street_sweep do
    ward_section { "#{rand(1000..3217)}" }
    dates "1,7"
    month "4"
  end
end
