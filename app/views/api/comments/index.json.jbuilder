json.array! @comments.each do |comment|
  json.comment comment.comment

    # json.comments post.comments.each do |comment|
    #   json.comment comment.comment
    # end
end
    # json.comments @comments.each do |comment|
    #   json.comment comment.comment
    # end