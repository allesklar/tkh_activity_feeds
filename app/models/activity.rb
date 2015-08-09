class Activity < ActiveRecord::Base

  belongs_to :doer, touch: true

  # tkh_mailing_list sends daily digest with yesterday's activity
  scope :yesterdays, -> { where('created_at >= ? AND created_at <= ?', 1.day.ago.beginning_of_day, 1.day.ago.end_of_day ) }
  scope :chronologically, -> { order('created_at') }
  scope :by_recent, -> { order('created_at desc') }

end
