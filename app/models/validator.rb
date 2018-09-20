class Validator < ActiveModel::Validator

  def clickbaity(post)
    unless post.title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
      post.errors.add(:title, "isn't cool enough")
    end
  end
end
