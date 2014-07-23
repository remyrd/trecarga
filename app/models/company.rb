class Company < ActiveRecord::Base
 has_many :users
 before_save {self.name = name.downcase}
 require :company, uniqueness: true

end
