class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :firstname

      t.timestamps
    end
  end
end
