ActiveAdmin.register SpeakerRequest do

  controller do
    cache_sweeper :speaker_request_sweeper

  end

	index do
		#Can we just reorder the columns to have first name, last name, contact person, email, phone, org, added date?
		column "Contact", :contact_person
		column :email
		column :phone
		column :requesting_org
	    column :published do |p|
	    	p.published.to_s == 'true' ? 'Yes' : 'No'
 	    end
	    column "Date of", :date
	    column "Created", :created_at
 		column :state do |s|
 			s.state_list
 		end
	    default_actions
  	end

   form do |f|
   		f.inputs "Details" do
	   		f.input :title
            f.input :content, :hint => "Description of the event"
	   		f.input :date
	   		f.input :speakers, :as => :select, :collection => Speaker.all,
               :input_html => { :multiple => true } 
            # create speaker 
			f.input :published, :label => "Show on the website."
			f.input :public, :label => "Is this event open to the public?"
	   		f.input :cme_ceu, :label => "Does the event need to be certified for CME or CEU credits?" 
	   		f.input :train_trainer, :label => "Train the Trainer" 
	   		f.input :tag_list, :label => "Type of Audience", 
	   			:hint => "type * to see all the existing tags. Separate by comma to use more than one eg 
	   			Example 1, Example 2"


	   	end
	   	f.inputs "Location: Online" do
	   		f.input :online, :label => "Online or a Conference Call", :hint => " Else fill in below"

	   	end

	   	f.inputs "Location: Not-Online" do
	   		f.input :location_name
	   		f.input :location_street
	   		f.input :location_street_two, :label => "Second Part of Address"
	   		f.input :location_zip
	   		f.input :city_list, :label => "City"
	   		f.input :state_list, :label => "State", :as => :select, 
	   		    :collection => us_states.collect{ |u| [u[0], u[0]] }
	   		f.input :requesting_org
	   		f.input :website, :hint => "full URL htt://google.com"
	   		f.input :contact_person
	   		f.input :email
	   		f.input :phone
	   	end

   		f.actions
    end
end

