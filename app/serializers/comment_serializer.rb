class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :replies
end
