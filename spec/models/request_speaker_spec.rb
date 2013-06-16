require 'spec_helper'

describe RequestSpeaker do
 let(:speaker) { FactoryGirl.create(:speaker) }
 let(:speaker_request) { FactoryGirl.create(:speaker_request) }
 let(:request_speaker) { speaker_request.request_speakers.build(speaker_id: speaker.id) }
 
 subject { request_speaker } 

 it { should be_valid }
end
