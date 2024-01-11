class Player
  attr_accessor :first_name, :last_name, :age, :team, :position

  def initialize
    @fist_name = first_name
    @last_name = last_name
    @age = age
    @team = team 
    @position = position
  end

  def start_career 
    puts "\n"
    puts "Welcome to the career of your professional soccer player!"
    puts "What is your soccer players first name?"
    self.first_name = gets.chomp
    puts "What is your soccer players last name?"
    self.last_name = gets.chomp
    puts "What is your soccer players age?"
    self.age = gets.chomp
    puts "What is your soccer players team?"
    self.team = gets.chomp
    puts "What is your soccer players position?"
    self.position = gets.chomp
    puts "\n"
    puts "Congratulations on your career #{self.to_s}!"
    player_career
  end

  def player_career
    loop do 
      puts "\n"
      puts "What would you like to do with your player?"
      puts "1. Play a game"
      puts "2. Switch teams"
      puts "3. Switch positions"
      puts "4. Retire"
      choice = gets.chomp.to_i
      case choice
      when 1 
        play
      when 2
        switch_team
      when 3
        switch_position
      when 4 
        puts "You had an amazing career #{first_name}! You retired at #{@team} playing as a #{@position}. Enjoy your retirement!"
        break
      else
        puts "Please select a valid option for your players career"
      end
    end
  end
  
  def play 
    my_team_score = rand(5)
    opposition_team_score = rand(5)
    if my_team_score > opposition_team_score
      goals_scored = rand(my_team_score).to_i
      puts "Congratulations! Your team won #{my_team_score} - #{opposition_team_score}! You scored #{goals_scored} goals."
    elsif opposition_team_score > my_team_score
      goals_scored = rand(my_team_score).to_i
      puts "Sorry, your team lost #{my_team_score} - #{opposition_team_score}! You scored #{goals_scored} goals."
    else
      goals_scored = rand(my_team_score).to_i
      puts "Even game, your team tied #{my_team_score} - #{opposition_team_score}! You scored #{goals_scored} goals."
    end
  end

  def switch_team
    puts "What team would you like to transfer to?"
    self.team = gets.chomp
    puts "Congratulations you made a succesful transfer to #{@team}!"
  end

  def switch_position
    puts "what position would you like to play now?"
    self.position = gets.chomp
    puts "Congratulations you are now playing as a #{@position}"
  end

  def to_s
    "#{@first_name} #{@last_name} playing for #{@team} as a #{@position}"
  end

end
