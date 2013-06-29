require 'spec_helper'

describe "SP Search page" do

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

 describe "Results" do
     let(:speaker_request) { FactoryGirl.create(:speaker_request) }
     let(:speaker) { FactoryGirl.create(:speaker) }
     
     before(:each) do
       visit speaker_requests_path
     end
 
     it "should have a view link" do
       #should have_selector('h3', text: 'Speaker Requests')
     end
     # gotta figure out how to get my 
     # calendarHelper to work here
     # error
     # ActionView::Template::Error:
     # undefined method `calendar'
     describe "Calendar Page" do
       before(:each) do
         #visit '/calendar'
       end

       #it { should have_content('No Title') }       
     end
 
   end
 

  describe "Submit Request" do
    before do
      visit speaker_requests_path
    end
    
    it "should have a submit requests link" do
      should have_selector('a', text: 'Submit Request')
    end
    #  
    #write the form test
    before do
     click_link "Submit Request"
     fill_in "speaker_request_title", with: "Test Capy"
     fill_in "speaker_request_date", with: Time.now + 1.day
     #fill_in "speaker_request_state_list", with: "Capy"
    end 
    it "should have form" do
       should have_selector('h1', text: 'Submit Speaker Request')
    end
    it "should create a new record" do 
      expect { click_button "Create Speaker request" }.to change(SpeakerRequest, :count).by(1)
      should have_selector('div.alert', text: 'Thanks for making the request. We will get back to you shortly') 
    end

    it "Should send an email" do
      assert !ActionMailer::Base.deliveries.empty?
      email = ActionMailer::Base.deliveries.last
      last =  SpeakerRequest.last
      assert_equal "New Request", email.subject
      ActionMailer::Base.deliveries = []
    end
  end

end
