class Activity < ActiveRecord::Base

  belongs_to :doer, touch: true

  scope :chronologically, -> { order('id') }
  scope :by_recent, -> { order('id desc') }

end
