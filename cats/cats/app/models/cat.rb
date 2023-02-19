require "action_view"

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  CAT_COLORS = ["Black", "Tabby", "Brown", "Calico", "Ginger"]
  validates :color, presence: true, inclusion: { in: CAT_COLORS }
  validates :birth_date, presence: true
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: ["M", "F"] }
  validate :birth_date_cannot_be_future

  def birth_date_cannot_be_future
    if birth_date > Date.today
      errors.add(:birth_date, "cant be in the future")
    end
  end

  def age
    time_ago_in_words(birth_date)
  end
end
