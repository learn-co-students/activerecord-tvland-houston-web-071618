class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters

  def full_name
    # Write a method in the `Actor` class, `#full_name`, that returns the first and last name of an actor.
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end
