# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Person < ApplicationRecord
  validates :name, presence: true
  validates :house_id, presence: true
end
