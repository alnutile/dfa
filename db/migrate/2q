class AddPublicToSpeakerRequest < ActiveRecord::Migration
  
  change_table :speaker_requests do |t|
    t.boolean :published, :default => false
  end
  SpeakerRequest.update_all ["published = ?", true]
end
