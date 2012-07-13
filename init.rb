require 'redmine'
require 'user_issues_hook_listener'

Redmine::Plugin.register :redmine_user_issues do
  name 'Redmine User Issues'
  author 'Klaus Meyer'
  description 'Shows the assigned issues on the user page'
  version '0.0.1'
  url 'https://github.com/klausmeyer/Redmine-User-Issues'
  author_url 'http://www.klaus-meyer.net/'
end
