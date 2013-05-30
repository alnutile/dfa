FactoryGirl.define do
  factory :location do
    sequence(:name)  { |n| "Location #{n}" }
  end

  factory :speaker do
    sequence(:firstname)  { |n| "Speaker #{n}" }
  end

end

