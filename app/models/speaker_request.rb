class SpeakerRequest < ActiveRecord::Base
  attr_accessible :content, :date, :location_id, :speaker_id, :title, :train_trainer, :public, :cme_ceu, :tag_list
  belongs_to :speaker
  belongs_to :location
  acts_as_taggable_on :tags
end
