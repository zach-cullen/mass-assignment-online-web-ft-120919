require 'pry'

class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  
  def initialize(attributes = {})
    attributes.each do |key, value|
      unless self.respond_to?("#{key}=")
        self.class.attr_accessor key
      end
      
      self.send(("#{key}="), value)
    end
  end
end


class Dog
  attr_accessor :name, :breed
  
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

end

binding.pry

puts "goodbye"