class TestHookListener < Redmine::Hook::ViewListener
  
  def view_account_left_bottom(context)
    # find all tickets assigned to the user
    context[:issues] = Issue.visible.open.where(assigned_to_id: context[:user][:id])
    context[:controller].send(:render_to_string, {
      :partial =>'user/issues_assigned',
      :locals => context
    })    
  end
  
end
