class AddLastnameEmailPhoneContactpersonRelatedorgToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :lastname, :string
    add_column :speakers, :email, :string
    add_column :speakers, :contactperson, :string
    add_column :speakers, :relatedorg, :string
  end
end
