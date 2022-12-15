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

  end
end
