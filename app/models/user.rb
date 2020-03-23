class User < ApplicationRecord
    has_many :notes
    has_many :notetags, through: :notes
    has_many :tags, through: :notetags
end
