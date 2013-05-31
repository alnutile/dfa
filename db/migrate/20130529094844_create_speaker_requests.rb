class CreateSpeakerRequests < ActiveRecord::Migration
  def change
    create_table :speaker_requests do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.integer :speaker_id
      t.integer :location_id

      t.timestamps
    end
  end
end
