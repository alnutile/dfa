FactoryGirl.define do
  factory :location do
    sequence(:name)  { |n| "Location #{n}" }
  end

  factory :speaker do
    sequence(:firstname)  { |n| "Speaker #{n}" }
  end

  factory :speaker_request do
    dateNow = "2013-07-01 11:08:07.217949"
    sequence(:title)  { |n| "Speaker #{n}" }
    sequence(:speaker_id) { |n| n }   
    sequence(:location_id) { |n| n }
    sequence(:date) { |n| dateNow }
    sequence(:tag_list) { |n| "Tag #{n}" }
    content 'Coming Soon...' 
    public 1
    cme_ceu 1
    train_trainer 1
  end
end