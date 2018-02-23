class Dragon
  def initialize name
    #super important that all instance variables are defined in the first method since the keyword 'initialize' is used, and thus allows the instance variables to be set up as soon as the new Class is created
    @name = name
    @asleep = false
    @stuffInBelly = 10 #10 is full, 0 is empty
    @stuffInIntestine = 0 #s/he doesn't need to go, 10 means he craps on you and you die from the nasty smell of dragon poop (Just think of it as your kryptonite)

    puts @name + ' was just born!'
    mainMenu
  end

  def mainMenu
    puts 'What would you like to do? Type in "feed", "walk", "put to bed", "toss", or "rock".'
    @activity = gets.chomp
    if @activity.downcase == 'feed'
      feed
    elsif @activity.downcase == 'walk'
      walk
    elsif @activity.downcase == 'put to bed'
      putToBed
    elsif @activity.downcase == 'toss'
      toss
    elsif @activity.downcase == 'rock'
      rock
    else
      puts 'you made a typo, fix it or else your dragon will be VERY angry...'
      mainMenu
    end
  end

  def feed
    #if @activity == 'feed'
      puts 'You feed ' + @name + '. She thinks it\'s yummy!'
      @stuffInBelly = 10
      passageOfTime
      mainMenu
    #end
  end

  def walk
    #if @activity == 'walk'
      puts 'You walked ' + @name + '. She did her business.'
      @stuffInIntestine = 0
      passageOfTime
      mainMenu
    #end
  end

  def putToBed
    #if @activity == 'put to bed'
      puts 'You put ' + @name + ' to bed.'
      @asleep = true
      3.times do
        if @asleep
          passageOfTime
        end
        if @asleep
          puts @name + ' snores, filling the room with smoke.'
        end
      end
      if @asleep
        @asleep = false
        puts @name + ' wakes up slowly.'
      end
      mainMenu
    #end
  end

  def toss
    #if @activity == 'toss'
      puts 'You toss ' + @name + ' up in the air.'
      puts 'She giggles, which singes your eyebrows.'
      passageOfTime
      mainMenu
    #end
  end

  def rock
    #if @activity == 'rock'
      puts 'You rock ' + @name + ' gently.'
      @asleep = true
      puts 'She briefly dozes off...'
      passageOfTime
      if @asleep
        @asleep = false
        puts '...but wakes when you stop.'
      end
      mainMenu
    #end
  end

  private
  #every method below the line 'private' is a private method (cannot be accessed)
  def hungry?
    @stuffInBelly <= 2
  end

  def bathroom?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly = @stuffInBelly - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else #dragon is starving!
      if @asleep
        @asleep = false
        puts 'She wakes up suddenly!'
      end
      puts @name + ' is starving! In desperation, she ate you!'
      puts "You then spend the next 1,000 years slowly being digested in your pet dragon\'s stomach."
      exit
    end #@stuffInBelly

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops! ' + @name + ' had an accident. It smelled so bad that as soon as you got a whiff of it, it killed you! Who know dragon poop could be so deadly?'
      exit
    end #@stuffInIntestine

    if hungry?
      if @asleep
        @asleep = false
        puts 'She wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles'
    end #hungry

    if bathroom?
      if @asleep
        @asleep = false
        puts 'She wakes up suddenly!'
      end
      puts @name + ' is dancing around! Maybe she has to use the bathroom...?'
    end #bathroom?
  end #def passageOfTime

puts "You found a dragon egg and it just hatched! what will you name your dragon?"
nameOfDragon = gets.chomp
pet = Dragon.new nameOfDragon

end #class Dragon
