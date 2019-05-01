json.array! @posts.each do |post|
  json.post post.post
    json.comments post.comments.each do |comment|
      json.comment comment.comment
    end
end