class AddLocationinfoToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :city, :string
    add_column :speakers, :state, :string
  end
end
