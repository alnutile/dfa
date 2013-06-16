class RemoveSpeakerIdFromSpeakerRequest < ActiveRecord::Migration
  def up
    remove_column :speaker_requests, :speaker_id
  end

  def down
    add_column :speaker_requests, :speaker_id, :integer
  end
end
