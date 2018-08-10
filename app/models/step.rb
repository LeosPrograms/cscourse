class Step < ApplicationRecord
  belongs_to :chapter
  has_many :question
end
