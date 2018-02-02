Redmine::Plugin.register :redmine_comment_only do
  name 'Comment Only plugin'
  author 'yamagen0915'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/yamagen0915/redmine_comment_only'
  author_url 'https://github.com/yamagen0915/'
end

require_dependency 'redmine_comment_only/hooks'
