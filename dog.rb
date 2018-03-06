# Build a Dog class.
# Each dog should have a name
# Implement a speak method to say woof.
# Add each cat's name to the speak method (Pixie says woof).

class Dog
    attr_reader :name, :gender, :breed
    attr_accessor :age, :location
    def initialize (gender,breed,name: nil, age: nil, location: nil)
        @gender = gender
        @breed = breed
        @name = name
        @age = age
        @location = location
        @walk = 0
    end

    def walk
        @walks +=1
        self
    end

    def display_walks
        suffix = @walks == 1 ? '': 's'
        "I have been on #{walks} walk#{suffix} today"
    end

    def ==(other)
        other.breed == breed
    end

    def name?
        !@name.nil?
    end

    def name=(value)
        if value.nil? then
        #Ignore value: output an error message
        else
        @name = value
        end
    end

    def birthday
        message = @birthday.nil? ? "": "not" #ternary operators
        "Birthday is #{message} nil"
    end
end

# dog1 = Dog.new :female, :husky, name: 'Sugar'
# dog2 = Dog.new :male, :husky, name: 'Ralph'
# puts dog1.inspect
# puts dog2.inspect
# puts "Does dog1 equal dog2? #{dog1 == dog2}"
# puts dog.birthday

