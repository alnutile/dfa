class AddFielsToSpeakerRequest < ActiveRecord::Migration
  def up
    change_table :speaker_requests do |t|
      t.boolean :train_trainer, :default => false
      t.boolean :public, :default => false
      t.boolean :cme_ceu, :default => false
    end
  end
 
  def down
    remove_column :cme_ceu, :public, :train_trainer
  end
end
