class Account < ActiveRecord::Base

  belongs_to :group
  has_many :dailies

end