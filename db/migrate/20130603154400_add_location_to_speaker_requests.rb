class AddLocationToSpeakerRequests < ActiveRecord::Migration
  def change
  	change_table :speaker_requests do |t|
  		t.remove :location_id
  		t.string :location_name
  		t.string :location_street
  		t.string :location_street_two
  		t.string :location_zip
  		t.string :city
  		t.string :state
  		t.boolean :online, :default => false
  		t.string :requesting_org
  		t.string :website
  		t.string :contact_person
  		t.string :phone
  		t.string :email
  	end
  	drop_table :locations
  end

  def down 

  end
end
