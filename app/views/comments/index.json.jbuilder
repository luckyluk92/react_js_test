json.array! @comments do |comment|
  json.author comment.user
  json.text comment.content
end
