ActiveAdmin.register Speaker do
	index do
		#Can we just reorder the columns to have first name, last name, contact person, email, phone, org, added date?
		column :firstname
		column :lastname
		column :contactperson, :label=>"Contact Person"
		column :contact_email, :label=>"Contact Person's Email"
		column :relatedorg, :label=>"Related Org"
	    column :phone, :label=>"Phone"
	    column :created_at, :label => "Created At"
	    default_actions
  	end

	form do |f|
		f.inputs "Speaker" do
			f.input :firstname
			f.input :lastname
			f.input :email
			f.input :contactperson, :label=>"Contact Person"
			f.input :contact_email, :label=>"Contact Person's Email"
			f.input :relatedorg, :label=>"Related Org"
			f.input :phone, :label=>"Phone"
			f.input :speakertag_list, :label=>"Speaker Tags", 
				:hint=>"type * to see all the existing tags. Separate by comma to use more than one eg 
	   			Example 1, Example 2"
		end
   		f.actions
	end
end
