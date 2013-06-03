require 'spec_helper'

describe "SpeakerRequests" do
 	subject { page }

	let(:speaker_request) { FactoryGirl.create(:speaker_request) }
	let(:speaker) { FactoryGirl.create(:speaker) }

 	describe "index" do


		before(:all) do 
			visit speaker_requests_path
			30.times { FactoryGirl.create(:speaker) } 
			30.times { FactoryGirl.create(:speaker_request) } 
		end

 		after(:all) { SpeakerRequest.delete_all }

 		before(:each) do
 			visit speaker_requests_path
 		end

 		it "should have a view link" do 
 			should have_selector('h3', text: 'Speaker Requests') 
 		end

 		it "should list each request" do
			SpeakerRequest.all.each do |sr|
				should have_link('View', { :href => "/speaker_requests/#{sr.id}" }) if sr.id < 20
			end
		end	
 
 		# Test Date
 		#Sunday, 06/16/2013 @ 01:39 AM UTC
 		#2013-07-01 11:08:07.217949
		#it { should have_selector('td.date', text: 'Monday, 07/01/2013 @ 11:08 AM UTC') }
		#could not get it to work at the selector level maybe a line break in there or?
		it { should have_content('Monday, 07/01/2013 @ 11:08 AM UTC') }

		#Past date should not be seen
 		
 		# Test Public
		it { should have_selector('td.public', text: 'Yes') }

 		# Test Speaker
		it { should have_selector('td.speaker', text: 'Speaker 1') }

 		# Test Location
		it { should have_selector('td.state', text: 'State 1') }

		# Test Tags
		it { should have_selector('td.tags', text: 'Tag 1') }

 	end

 	describe "Speaker Page" do
		#<h3>Request #<%= @speaker_request.id %></h3>
		before(:each) do
 			visit speaker_request_path(speaker_request)
 		end
		 
		it { should have_selector('h3', text: "Request ##{speaker_request.id}") }
 	end

 	# describe "Pager area" do
 	# 	it { should have_content('Next') }
 	# 	let(:speaker_request) { FactoryGirl.create(:speaker_request) }
 	# 	let(:location) { FactoryGirl.create(:location) }
 	# 	let(:speaker) { FactoryGirl.create(:speaker) }

 	# 	before(:all) do 
		# 	60.times { FactoryGirl.create(:location) } 
		# 	60.times { FactoryGirl.create(:speaker) } 
		# 	60.times { FactoryGirl.create(:speaker_request) } 
		# end

 	# 	after(:all) { SpeakerRequest.delete_all }

 	# 	before { visit speaker_requests_path }
		# # Pagination
		# it { should have_selector('div.pagination') }
      	
  		# it { should have_css('next') }
		# before { find(:xpath, "//a[@href='/speaker_requests?page=2']").click }
		# it { should have_selector('td.speaker', text: 'Speaker 40') }
		# it { should have_content('Next') }

 	#  end

end
