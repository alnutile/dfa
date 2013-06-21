class AddContactEmailToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :contact_email, :string
  end
end
