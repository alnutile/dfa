class RequestSpeaker < ActiveRecord::Base
  attr_accessible :speaker_request_id, :speaker_id
  belongs_to :speaker_request
  belongs_to :speaker
end
