# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account=25
    @happiness=8
    @hygiene=8

  end

  def happiness=(happiness_level)
    # @happiness= happiness_level
      if happiness_level<0
        @happiness= 0
      elsif happiness_level>10
        @happiness= 10
      else
        puts happiness_level
        @happiness= happiness_level
      end

  end


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

  def clean?

    @hygiene>7
  end
  def happy?
    @happiness>7

  end
  def get_paid(amount)
    @bank_account+=amount
    "all about the benjamins"

  end
  def take_bath

   self.hygiene=(@hygiene +4)
  "♪ Rub-a-dub just relaxing in the tub ♫"

  end
  def work_out
   self.happiness=(@happiness+2)
    self.hygiene=(@hygiene-3)

    "♪ another one bites the dust ♫"

  end
  def call_friend(friend) 
    puts friend.happiness
    self.happiness=(@happiness+3)
    friend.happiness=(@happiness+3)
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)
    people =[self, friend]
    if topic =="politics"
      # self.happiness=(happiness-2)
      # friend.happiness=(happiness-2)
      people.each {|person| person.happiness=(happiness-2)}
      "blah blah partisan blah lobbyist"
    elsif topic =="weather"
        # self.happiness=(happiness+1)
        # friend.happiness=(happiness+1)
        people.each {|person| person.happiness=(happiness+1)}
        "blah blah sun blah rain"
    else

        "blah blah blah blah blah"
    end

  end

end

p1= Person.new("Stella")

p2= Person.new("Felix")

# p1.happiness= 0

#  puts p1.take_bath
  # p1.bank_account = 39

  puts p2.happiness
  puts p1.call_friend(p2)
  # puts p2.happiness
  # puts p1.happiness
  # puts p1.call_friend("felix")
  # puts p1.happiness
  # puts p1.hygiene
  # puts p1.take_bath
  # puts p1.hygiene
  # puts p1.take_bath
  # puts p1.happy?
  # puts p1.get_paid(200)
  # puts p1.bank_account
  # puts p1.get_paid(200)
  # puts p1.bank_account

