module ApplicationHelper
    # ページごとにタイトルを返す
    def full_title(page_name = "")
        base_title = "SelfManagementApp"
        if page_name.empty?
          base_title
        else
          page_name + " | " + base_title
        end
      end
end
