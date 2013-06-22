ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    
    columns do
      column do
        panel "No Speaker" do
          ul do
            start = Date.today.beginning_of_month 
            enddate = Date.today.beginning_of_month + 3.months 
            SpeakerRequest.date_range(start, enddate).order("date ASC").map do |r|
              if r.speakers.empty?
                  title = r.title ||= "No Title"
                  if r.date.nil? 
                    date = "No Date"
                  else 
                    date = r.date.strftime("%b %e, %Y") 
                  end
                  li link_to(title, admin_speaker_request_path(r.id)) + " on #{date}"
              end
            end
          end
        end
      end

      column do
        panel "Info" do
          simple_format "Welcome to ActiveAdmin. Need more features on your dashboard? e-mail <a href='mailto:alfrednutile@gmail.com'>Al Nutile</a>"
        end
      end
    end
  end # content
end
