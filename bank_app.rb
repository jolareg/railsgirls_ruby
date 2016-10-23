class Bank
  def say_hello
    puts "I would like to ask you to give me your money!!!"
  end
end

class BankTerminal < Bank

  def initialize
    @balance = 0
  end

  def print_menu
    puts "[1] - uzupełnij status konta"
    puts "[2] - wyświetl stan konta"
    puts "[3] - wybierz środki"
    puts "[4] - dodaj środki"
    puts "[5] - exit"
    @choice = gets.chomp
  end

  def say_hello
    super
    puts "Please :)"
  end

  def runek
    loop do
      say_hello
      print_menu
      dispatch_action
    end
  end

  def set_balance
    puts "Podaj stan konta"
    @balance = gets.to_i
  end

  def display_balance
    puts "Mój stan konta to: #{@balance}"
   end

  def add_balance
   puts "Dodaj kwotę"
   cash = gets.to_i
   @balance = @balance + cash
  end

  def minus_balance
   puts "Wypłać kwotę z konta"
   cash = gets.to_i

   if cash <= @balance
     @balance = @balance - cash
   else
     puts "Nie masz takich środków na koncie. Nie możesz wypłacić tej kwoty. Brakuje Ci #{cash - @balance}."
   end
  end


  def dispatch_action
    case @choice
    when "1" then set_balance
    when "2" then display_balance
    when "3" then minus_balance
    when "4" then add_balance
    when "5" then exit
    end
  end

end

my_terminal = BankTerminal.new
my_terminal.runek
