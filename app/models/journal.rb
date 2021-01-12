class Journal < ApplicationRecord
  has_many :dreams
  belongs_to :user
end
