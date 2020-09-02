# A puppy is initialized with a cuteness score of 5.  A puppy can raise
# its cuteness score by 3 points if it gets groomed, and lower its score
# by 5 points playing in the mud.  

# The following code works, but there are some problems.  Refactor this code 
# to improve it.  (The code can be downloaded from your learn.co page under
# lecture 04)

class Puppy

    attr_reader :name, :cuteness

    @@min_cuteness = 1
    @@max_cuteness = 10

    def initialize(name, cuteness=5)
        @name = name
        @cuteness = cuteness
    end

    def cuteness=(new_cuteness)
        @cuteness = new_cuteness.clamp(@@min_cuteness, @@max_cuteness)
        # if @cuteness > 10
        #     @cuteness = 10
        # elsif @cuteness < 1
        #     @cuteness = 1
        # end
    end
    
    def play_in_the_mud
        self.cuteness=(self.cuteness - 5)
    end

    def take_a_bath
        self.cuteness = self.cuteness + 3 
    end    

    # def get_groomed
    #     @cuteness += 2
    #     self.limit_cuteness
    # end
end

fido = Puppy.new("Fido")
puts fido.cuteness == 5 # test initial cuteness
fido.take_a_bath
puts fido.cuteness == 8 # test that take a bath raises cuteness by 3
fido.take_a_bath
puts fido.cuteness == 10 # test that cuteness cannot exceed 10