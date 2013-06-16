class ChangeRequestIdRequestSpeakers < ActiveRecord::Migration
  def up
    rename_column :request_speakers, :request_id, :speaker_request_id 
  end

  def down
    rename_column :request_speakers, :speaker_request_id, :request_id   
  end
end
