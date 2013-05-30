class SpeakerRequest < ActiveRecord::Base
  attr_accessible :content, :date, :location_id, :speaker_id, :title
  belongs_to :speaker
  belongs_to :location
end
