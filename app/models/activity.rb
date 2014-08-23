class Activity < ActiveRecord::Base

  belongs_to :doer, touch: true

  scope :chronologically, -> { order('created_at') }
  scope :by_recent, -> { order('created_at desc') }

end
