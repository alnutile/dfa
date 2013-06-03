class RemoveCityStateForSpeakerRequest < ActiveRecord::Migration
  def up
  	change_table :speaker_requests do |t|
  		t.remove :city
  		t.remove :state
  	end
  end

  def down
   	change_table :speaker_requests do |t|
  		t.string :city
  		t.string :state
  	end
  end
end
