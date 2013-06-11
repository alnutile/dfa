require 'spec_helper'

describe "SP Search page" do

  subject { page }

  describe "Results" do
    let(:speaker_request) { FactoryGirl.create(:speaker_request) }
    let(:speaker) { FactoryGirl.create(:speaker) }
    
    before(:each) do
      visit speaker_requests_path
    end

    it "should have a view link" do
      should have_selector('h3', text: 'Speaker Requests')
    end

    describe "pagination" do
      before(:all) do
        31.times { FactoryGirl.create(:speaker) }
        31.times { FactoryGirl.create(:speaker_request) }
      end
      
      it { should have_selector('div.pagination') }
      save_and_open_page    
    end

  end

end
