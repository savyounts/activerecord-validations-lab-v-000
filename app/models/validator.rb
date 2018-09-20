class Validator < ActiveModel::Validator

  def clickbaity
    unless title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
      errors.add(:title, "isn't cool enough")
    end
  end
end
