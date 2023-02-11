# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
# initialize
  def initialize(name)
    @name = name
    @bank_account=25
    @happiness=8
    @hygiene=8

  end
# happiness setter
  def happiness=(happiness_level)
      if happiness_level<0
        @happiness= 0
      elsif happiness_level>10
        @happiness= 10
      else
        puts happiness_level
        @happiness= happiness_level
      end
  end
# hygiene setter
  def hygiene=(hygiene_amount)
    if hygiene_amount<0
        @hygiene= 0
      elsif hygiene_amount>10
        @hygiene= 10
      else
        puts hygiene_amount
        @hygiene= hygiene_amount
      end
  end
# clean method
  def clean?
    @hygiene>7
  end
  # happy method
  def happy?
    @happiness>7
  end
  # get paid method
  def get_paid(amount)
    @bank_account+=amount
    "all about the benjamins"
  end
  # take bath method
  def take_bath
   self.hygiene=(@hygiene +4)
  "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  # work out method
  def work_out
   self.happiness=(@happiness+2)
    self.hygiene=(@hygiene-3)
    "♪ another one bites the dust ♫"
  end
  # call friend method
  def call_friend(friend)
    puts friend.happiness
    self.happiness=(@happiness+3)
    friend.happiness=(friend.happiness+3)
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end
# start conversation method
  def start_conversation(friend, topic)
    if topic =="politics"
      self.happiness=(@happiness-2)
      friend.happiness=(friend.happiness-2)
      "blah blah partisan blah lobbyist"
    elsif topic =="weather"
        self.happiness=(@happiness+1)
        friend.happiness=(friend.happiness+1)
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end
  end
end

p1= Person.new("Stella")
p2= Person.new("Felix")

puts p2.happiness
puts p1.start_conversation(p2, "politics")


