class Notetag < ApplicationRecord
  belongs_to :note
  belongs_to :tag
  has_one :user, through: :note
end
