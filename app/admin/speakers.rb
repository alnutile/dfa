ActiveAdmin.register Speaker do
	index do
		#Can we just reorder the columns to have first name, last name, contact person, email, phone, org, added date?
		column "First Name", :firstname
		column "Last Name", :lastname
		column "Contact", :contactperson
		column "Contact Email", :contact_email
		column "Related Org", :relatedorg
	    column "Phone", :phone
	    column "City", :city 
	    column "State", :state
	    column "Created At", :created_at 
	    default_actions
  	end

	form do |f|
		f.inputs "Speaker" do
			f.input :firstname, :label=> "First Name"
			f.input :lastname, :label=> "Last Name"
			f.input :email
			f.input :contactperson, :label=>"Contact Person"
			f.input :contact_email, :label=>"Contact Person's Email"
			f.input :relatedorg, :label=>"Related Org"
			f.input :phone, :label=>"Phone"
			f.input :city, :label=>"City"
	   		f.input :state, :label => "State", :as => :select, 
	   		    :collection => us_states.collect{ |u| [u[0], u[0]] }
			f.input :speakertag_list, :label=>"Speaker Tags", 
				:hint=>"type * to see all the existing tags. Separate by comma to use more than one eg 
	   			Example 1, Example 2"
		end
   		f.actions
	end
end
