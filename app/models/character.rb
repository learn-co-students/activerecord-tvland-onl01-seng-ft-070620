class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

# returns a string with a given character's catchphrase
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

end
