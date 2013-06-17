class AddTitleToSpeakerRequest < ActiveRecord::Migration
  def change
    add_column :speaker_requests, :title, :text
  end
end
