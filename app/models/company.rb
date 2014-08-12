class Company < ActiveRecord::Base
 has_many :users, dependent: :destroy
 before_save {self.name = name.downcase}
 validates :name, uniqueness: true, presence: true
 has_many :dailies, dependent: :destroy
 has_many :groups, dependent: :destroy
 has_many :accounts, dependent: :destroy

end
