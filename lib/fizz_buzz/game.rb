module FizzBuzz
  class Game

    def display_plain_number(first_number, last_number)
      if !validate_numbers(first_number, last_number)
        "Not accepted numbers"
      else
        (first_number..last_number).to_a.join(",")
      end
    end

    def display_fizzbuzz(first_number, last_number)
      if !validate_numbers(first_number, last_number)
        "Not accepted numbers"
      else
        (first_number..last_number).map{ |number|
          show_value_fizzbuzz(number)
        }.join(",")
      end
    end

    def play
      keep_playing = true
      while keep_playing
        puts "Enter first number: "
        first_number = gets.chomp
        puts "Enter second number: "
        second_number = gets.chomp
        if not validate_user_numbers(first_number, second_number)
          puts "Invalid input"
        else
          puts display_fizzbuzz(first_number.to_i, second_number.to_i)
        end
        puts "Type 'exit' to exit, otherwise enter any input"
        if gets.chomp == "exit"
          keep_playing = false
        end
      end
    end

    private

    def validate_numbers(first_number, last_number)
      first_number.is_a?(Integer) && last_number.is_a?(Integer)
    end

    def show_value_fizzbuzz(number)
      value = ""
      value = "fizz" if number % 3 == 0
      value += "buzz" if number % 5 == 0

      value == "" ? number : value
    end

    def validate_user_numbers(first_number, second_number)
      regex = /^(\d)+$/
      (first_number.match? regex) && (second_number.match? regex)
    end

  end
end
