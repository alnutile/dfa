require 'spec_helper'

describe "SpeakerRequests" do
 	subject { page }

 	describe "index" do
 		let(:speaker_request) { FactoryGirl.create(:speaker_request) }
 		let(:location) { FactoryGirl.create(:location) }
 		let(:speaker) { FactoryGirl.create(:speaker) }

 		before(:all) do 
			10.times { FactoryGirl.create(:location) } 
			10.times { FactoryGirl.create(:speaker) } 
			10.times { FactoryGirl.create(:speaker_request) } 
		end

 		after(:all) { Speaker_Request.delete_all }

 		before(:each) do
 			visit speaker_requests_path
 		end

 		it { should have_selector('h3', text: 'Speaker Requests') }
 
 	end
end
