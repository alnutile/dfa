class AddCityColumnToSpeakerRequest < ActiveRecord::Migration
  def change
    add_column :speaker_requests, :city, :string
  end
end
