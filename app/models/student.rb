require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email, format: {with: /.@.+\..{2,}/, message: 'only valid emails'}

  validates :email, uniqueness: true

  validates :age, numericality: {greater_than_or_equal_to: 5}

  validates :phone, format: {with: /\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*/, message: 'only valid phone numbers'}



  def name
     "#{self.read_attribute(:first_name)} #{self.read_attribute(:last_name)}"
  end

  def age
    (Date.today - self.read_attribute(:birthday)).to_i / 365
  end

end
 
