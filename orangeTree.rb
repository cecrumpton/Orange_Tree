class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @numberOfOranges = 0
    puts 'You planted an orange tree seed!'
    mainMenu
  end

  def mainMenu
    puts 'What would you like to do? Type in "wait a year", "height", "pick an orange", or "count".'
    @activity = gets.chomp
    if @activity.downcase == 'wait a year'
      oneYearPass
    elsif @activity.downcase == 'height'
      height
    elsif @activity.downcase == 'pick an orange'
      pickAnOrange
    elsif @activity.downcase == 'count'
      countOranges
    else
      puts 'you made a typo, fix it or else your orange tree may turn into an apple tree, and oranges are way better than apples.'
      mainMenu
    end
  end

  def height
    puts @height.to_s + ' ft'
    mainMenu
  end

  def oneYearPass
    @age += 1
    if @age >= 10
      puts 'The tree died a slow and painful death, becasue you spent the last 10 years RIPPING OFF ITS LIMBS!'
      exit
    end
    if @height < 40
      @height += 8
    else
      @height = 40
    end
    if @height >= 16
      @numberOfOranges = 15 + rand(30) #between 15 and 45 total oranges
    end
    mainMenu
  end

  def pickAnOrange
    if @numberOfOranges >= 1
      @numberOfOranges -= 1
      puts 'You pick an orange and eat it. It tastes better than you average apple.'
      mainMenu
    else
      puts 'There are no more oranges on the tree.'
      mainMenu
    end
  end

  def countOranges
    puts @numberOfOranges
    mainMenu
  end

tree = OrangeTree.new
end #end class OrangeTree
