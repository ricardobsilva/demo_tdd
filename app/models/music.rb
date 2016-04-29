class Music < ActiveRecord::Base
  validates :title, :name_author, presence: true
  belongs_to :band
end
