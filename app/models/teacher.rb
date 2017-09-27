class Teacher < ApplicationRecord
  has_many :practices
  has_many :students, through: :practices

  validates :name, presence: true
end
