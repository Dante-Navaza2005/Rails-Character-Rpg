class Character < ApplicationRecord
  has_many :skills, dependent: :destroy

  def to_s
    name
  end

  def teste
    1+1
  end
end
