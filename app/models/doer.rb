class Doer < User

  has_many :activities, dependent: :destroy

end
