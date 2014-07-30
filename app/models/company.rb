class Company < ActiveRecord::Base
 has_many :users
 before_save {self.name = name.downcase}
 validates :name, uniqueness: true

end
