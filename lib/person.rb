# your code goes here

class Person
    # accesor on bank account bc use can do keyvan.bank_acct(123) to change value after initlze
    attr_accessor :bank_account

    # we want to have option to do keyvan.name
    attr_reader :name, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # name=() tells us this is a setter/ writer
    def happiness=(num)
       if num < 0
        @happiness = 0
       elsif num > 10
        @happiness = 10
       else
        @happiness = num
       end
    end

    def hygiene=(num)
        @hygiene =  if num < 0
                0
            elsif num > 10
                10
            else
                num
        end
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
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
    
      def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
      end
    
      def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end
    
      def start_conversation(friend, topic)
        case topic 
        when "politics"
          [self, friend].each { |person| person.happiness -= 2 }
          "blah blah partisan blah lobbyist"
        when "weather"
          [self, friend].each { |person| person.happiness += 1 }
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end
    
    end