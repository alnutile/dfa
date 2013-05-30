class SpeakerRequest < ActiveRecord::Base
  attr_accessible :content, :date, :location_id, :speaker_id, :title, :train_trainer, :public, :cme_ceu
  belongs_to :speaker
  belongs_to :location
end
