class RemoveCityColumnToSpeakerRequest < ActiveRecord::Migration
  def up
    remove_column :speaker_requests, :city
  end

  def down
    add_column :speaker_requests, :city, :string
  end
end
