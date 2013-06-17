require 'spec_helper'

describe "Calendar page" do
  
  subject { page }
       
    before(:all) do
     #31.times { FactoryGirl.create(:speaker) }
     31.times { FactoryGirl.create(:speaker_request) }
     #31.times { FactoryGirl.create(:request_speaker) }
    end
    after(:all) do
      Speaker.delete_all
      SpeakerRequest.delete_all
      RequestSpeaker.delete_all
    end

  describe "Calendar View" do
    before(:each) do 
      visit '/calendar'
    end
    it { should have_content('Test First') }
  end
end
