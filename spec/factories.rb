FactoryGirl.define do

  factory :speaker do
    sequence(:firstname)  { |n| "Speaker #{n}" }
  end

  factory :speaker_request do
    dateNow = "2013-07-01 11:08:07.217949"
    sequence(:speaker_id) { |n| n } 
    sequence(:date) { |n| dateNow }
    sequence(:tag_list) { |n| "Tag #{n}" }
    sequence(:location_name) { |n| "Location #{n}" }
    sequence(:location_street) { |n| "Street #{n}" }
    
    content 'Coming Soon...' 
    public 1
    cme_ceu 1
    train_trainer 1
  end
end