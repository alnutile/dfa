FactoryGirl.define do
  
  factory :speaker do
    firstname "Test First"
    lastname "Test Last"
    email "text@example.com"
    relatedorg "Test Related Org"
  end

  factory :speaker_request do
    date_now = Time.now + 1.day
    sequence(:date) { |n| date_now } 
    #sequence(:tag_list) { |n| "Tag #{n}" }
    #sequence(:city_list) { |n| "City #{n}" }
    sequence(:state_list) { |n| "State #{n}" }
    #sequence(:location_street) { |n| "Street #{n}" }
    #public 1
    published 1
    content 'Coming Soon...' 
    cme_ceu 1
    train_trainer 1
 
    after(:create) do |a|
      speaker = FactoryGirl.create(:speaker)
      request_speaker = FactoryGirl.create(:request_speaker, speaker_id: speaker.id, 
          speaker_request_id: a.id)
    end
  end

  factory :request_speaker do
  end
end
