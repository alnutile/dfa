FactoryGirl.define do
  factory :location do
    sequence(:name)  { |n| "Location #{n}" }
  end

  factory :speaker do
    sequence(:firstname)  { |n| "Speaker #{n}" }
  end

  factory :speaker_request do
    sequence(:title)  { |n| "Speaker #{n}" }
    sequence(:content) { |n| "Coming Soon..." }   
    sequence(:speaker_id) { |n| n }   
    sequence(:location_id) { |n| n }
    sequence(:date) { |n| Time.now }
    sequence(:train_trainer) { |n| 1 }
    sequence(:cme_ceu) { |n| 1 }
    sequence(:public) { |n| 1 }

  end
end