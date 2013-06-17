class ChangeTitleSpeakerRequest < ActiveRecord::Migration
  def up
    change_column :speaker_requests, :title, :string
  end

  def down
    change_column :speaker_requests, :title, :text
  end
end
