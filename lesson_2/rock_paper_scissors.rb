VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_CHOICE_SHORTHANDS = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}
BEATEN_BY = {
  'scissors' => ['paper', 'lizard'],
  'paper' => ['rock', 'spock'],
  'rock' => ['lizard', 'scissors'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

def valid_choice_shorthand?(choice)
  VALID_CHOICE_SHORTHANDS.keys().include?(choice)
end

def valid_choice?(choice)
  return true if VALID_CHOICES.include?(choice)
  is_valid_choice_shorthand?(choice)
end

def test_method
  prompt('test message')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  BEATEN_BY[first].include?(second)
end

def display_results(winner)
  if winner == :player
    prompt("You won!")
  elsif winner == :computer
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def match_over?(win_count)
  win_count[:player] == 3 || win_count[:computer] == 3
end

def new_match!(win_count)
  win_count[:player] = 0
  win_count[:computer] = 0
end

def add_win!(win_count, winner)
  win_count[winner] += 1
end

def grand_winner(win_count)
  return :player if win_count[:player] == 3
  return :computer if win_count[:computer] == 3
  nil
end

loop do
  win_count = {}
  new_match!(win_count)

  until match_over?(win_count)
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()

      if valid_choice?(choice)
        if valid_choice_shorthand?(choice)
          choice = VALID_CHOICE_SHORTHANDS[choice]
        end

        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample()

    prompt("You chose #{choice}; Computer chose #{computer_choice}")

    winner = nil
    if win?(choice, computer_choice)
      winner = :player
      add_win!(win_count, :player)
    elsif win?(computer_choice, choice)
      winner = :computer
      add_win!(win_count, :computer)
    end

    display_results(winner)
  end

  if grand_winner(win_count) == :player
    prompt("You are the grand winner and won the match!")
  else
    prompt("The computer is the grand winner and won the match!")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
