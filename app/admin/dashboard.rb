ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Current Packages" do
          ul do
            Product.all.each do |p|
              li link_to(p.name, admin_product_path(p))
            end
          end
        end
      end

      column do
        panel "Reviews" do
          ul do
            Review.all.each do |r|
              li link_to(r.title, admin_review_path(r))
            end
          end
        end
      end
    end
  end # content
end
