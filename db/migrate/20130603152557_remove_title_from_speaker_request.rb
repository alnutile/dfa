class RemoveTitleFromSpeakerRequest < ActiveRecord::Migration
  def up
  	change_table :speaker_requests do | t| 
  		t.remove :title
  	end
  end

  def down
  	change_table :speaker_requests do | t| 
  		t.string :title
  	end
  end
end
