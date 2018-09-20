class Validator < ActiveModel::Validator

  def validate(post)
    unless post.title.include?(/Won't Believe/)
      post.errors.add(:title, "isn't cool enough")
    end
  end
end
