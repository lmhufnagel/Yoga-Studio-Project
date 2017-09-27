class Practice < ApplicationRecord
  belongs_to :teacher
  has_many :students, through: :sign_up

  validates :title, presence: true
  validates :teacher, presence: true
  
end
