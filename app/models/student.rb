class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  def status
    "This student is currently #{self.active ? "active" : "inactive"}."
  end
end