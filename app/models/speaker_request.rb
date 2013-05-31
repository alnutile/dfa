class SpeakerRequest < ActiveRecord::Base
  attr_accessible :content, :date, :location_id, :speaker_id, :title, :train_trainer, :public, :cme_ceu, :tag_list
  belongs_to :speaker
  belongs_to :location
  acts_as_taggable_on :tags
  # validate :incorrect_date, :on => :create

  def yes_or_no
    attribute ? 'Yes' : 'No'
  end

  private
   # def incorrect_date
   # 	if date < Date.today
   # 		errors.add("Please choose a future date")
   # 	end
   # end
end
