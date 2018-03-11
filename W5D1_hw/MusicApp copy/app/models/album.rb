class Album < ApplicationRecord
  validates :title, :year, presence: true
  # validates :recorded, inclusion: { ['true, false'] }

  belongs_to :band

end
