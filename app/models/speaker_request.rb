class SpeakerRequest < ActiveRecord::Base
  attr_accessible :content, :date, :speaker_id, :train_trainer, 
    :public, :cme_ceu, :tag_list, :location_name, :location_street, :location_street_two,
    :location_zip, :city, :state, :online, :requesting_org, :website, :contact_person, 
    :phone, :email
  belongs_to :speaker
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
