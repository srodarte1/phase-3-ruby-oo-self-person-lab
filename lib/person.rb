require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25 #we are setting the value they are starting out with. 
        @happiness = 8
        @hygiene = 8
        
    end

    def happiness=(value)
        # if self.happiness <= 10 && value >= 0
    #         @happiness = value
    # elsif value > 10
    #     @happiness = 10
    # else 
    #     @happiness = 0
            @happiness = value.clamp(0,10)

    end

    def hygiene=(value)
        @hygiene = value.clamp(0,10)
    end

    def clean?
        if @hygiene > 7 
                true
            else
                false
            end
    end

    def happy?
        if @happiness > 7 
            @happiness = true
            else
                @happiness = false
            end 
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = 4 + @hygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = 2 + @happiness
        self.hygiene = @hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = 3 + @happiness
        friend.happiness = 3 + friend.happiness
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
        
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            return self.happiness = @hppiness - 2
            friend.happiness= friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness = @happinesss + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end





    def return_self
       self
    end

end

# new_person = Person.new("Sarah")

# friend = Person.new("Gigi")
# new_person.call_friend(friend)


# binding.pry