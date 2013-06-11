FactoryGirl.define do
  factory :speaker do
    sequence(:firstname)  { |n| "Speaker #{n}" }
  end

  factory :speaker_request do
    sequence(:speaker_id) { |n| n } 
    sequence(:date) { |n| Time.now + 1.day } 
    #sequence(:tag_list) { |n| "Tag #{n}" }
    #sequence(:city_list) { |n| "City #{n}" }
    #sequence(:state) { |n| "State #{n}" }
    #sequence(:location_street) { |n| "Street #{n}" }
    #public 1
    content 'Coming Soon...' 
    cme_ceu 1
    train_trainer 1
  end
end
