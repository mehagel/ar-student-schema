require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email, uniqueness: true

  def name
     "#{self.read_attribute(:first_name)} #{self.read_attribute(:last_name)}"
  end

end
