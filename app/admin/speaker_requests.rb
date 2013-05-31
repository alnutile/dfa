ActiveAdmin.register SpeakerRequest do

	index do
	    column :title
	    column :date
	    column :tag_list
	    default_actions
  	end

   form do |f|
   		f.inputs "Details" do
	   		f.input :title
	   		f.input :content
	   		f.input :date
	   		f.input :speaker_id, :as => :select, :collection => Speaker.all
	   		f.input :location_id, :as => :select, :collection => Location.all
	   		f.input :public, :label => "Is this event open to the public?"
	   		f.input :cme_ceu, :label => "Does the event need to be certified for CME or CEU credits?" 
	   		f.input :train_trainer, :label => "Train the Trainer" 
	   		f.input :tag_list, :as => :string, :collection => ActsAsTaggableOn::Tag.all.map(&:name),
	   			:label => "Type of Audience", 
	   			:hint => "type * to see all the existing tags. Separate by comma to use more than one eg 
	   			Example 1, Example 2"
	   	end

   		f.actions
    end
end

