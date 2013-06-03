class AddPhoneToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :phone, :string
  end
end
