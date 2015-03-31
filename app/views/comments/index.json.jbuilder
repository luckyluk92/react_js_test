json.comments @comments do |comment|
  json.user comment.user
  json.content comment.content
end
json.form do
  json.action comments_path
  json.csrf_param request_forgery_protection_token
  json.csrf_token form_authenticity_token
end
