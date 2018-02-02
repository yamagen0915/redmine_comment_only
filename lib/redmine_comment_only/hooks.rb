module RedmineCommentOnly
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      controller = context[:controller]
      if controller.controller_name == 'issues' && controller.action_name == 'show'
        controller.send(:render_to_string, {
          partial: "hooks/redmine_comment_only/hide_details",
          locals:  { context:  context}
        })
      end
    end
  end
end
