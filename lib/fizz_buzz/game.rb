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
          if number % 3 == 0 && number % 5 == 0
            "fizzbuzz"
          elsif number % 3 == 0
            "fizz"
          elsif number % 5 == 0
            "buzz"
          else
            number.to_s
          end
        }.join(",")
      end
    end

    private

    def validate_numbers(first_number, last_number)
      first_number.is_a?(Integer) && last_number.is_a?(Integer)
    end
  end
end
