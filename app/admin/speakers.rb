ActiveAdmin.register Speaker do
	form do |f|
		f.inputs "Speaker" do
			f.input :firstname
			f.input :lastname
			f.input :email
			f.input :contactperson, :label=>"Contact Person"
			f.input :relatedorg, :label=>"Related Org"
			f.input :phone, :label=>"Phone"
			f.input :speakertag_list, :label=>"Speaker Tags", 
				:hint=>"type * to see all the existing tags. Separate by comma to use more than one eg 
	   			Example 1, Example 2"
		end
   		f.actions
	end
end
