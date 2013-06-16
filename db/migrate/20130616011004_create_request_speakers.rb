class CreateRequestSpeakers < ActiveRecord::Migration
  def change
    create_table :request_speakers do |t|
      t.integer :speaker_id
      t.integer :request_id

      t.timestamps
    end

    add_index :request_speakers, :speaker_id
    add_index :request_speakers, :request_id
    add_index :request_speakers, [:speaker_id, :request_id], unique: true
  end
end
