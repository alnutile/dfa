ActiveAdmin.register SpeakerRequest do

	index do
		column :id, :label => "#"
	    column :date
	    column :tag_list
	    default_actions
  	end

   form do |f|
   		f.inputs "Details" do
	   		f.input :content
	   		f.input :date
	   		f.input :speaker_id, :as => :select, :collection => Speaker.all
	   		f.input :public, :label => "Is this event open to the public?"
	   		f.input :cme_ceu, :label => "Does the event need to be certified for CME or CEU credits?" 
	   		f.input :train_trainer, :label => "Train the Trainer" 
	   		f.input :tag_list, :as => :string, :collection => ActsAsTaggableOn::Tag.all.map(&:name),
	   			:label => "Type of Audience", 
	   			:hint => "type * to see all the existing tags. Separate by comma to use more than one eg 
	   			Example 1, Example 2"

	   	end
	   	f.inputs "Location: Online" do
	   		f.input :online, :label => "Is it Online?", :hint => " Else fill in below"

	   	end

	   	f.inputs "Location: Not-Online" do
	   		f.input :location_name
	   		f.input :location_street
	   		f.input :location_street_two, :label => "Second Part of Address"
	   		f.input :location_zip
	   		f.input :city
	   		f.input :state
	   		f.input :requesting_org
	   		f.input :website, :hint => "full URL htt://google.com"
	   		f.input :contact_person
	   		f.input :phone
	   		f.input :email
	   	end

   		f.actions
    end
end

