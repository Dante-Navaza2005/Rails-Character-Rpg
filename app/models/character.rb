class Character < ApplicationRecord
  has_many :skills, dependent: :destroy

  def to_s
    name
  end

  def level
    (strength + dexterity + constitution + intelligence + wisdom + charisma)/6
  end

  def ultimate
    2+2
  end

  def alive
    true
  end
end
