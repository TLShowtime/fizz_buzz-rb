module FizzBuzz
  class Game

    def display_plain_number(first_number, last_number)
      if !validate_numbers(first_number, last_number)
        "Not accepted numbers"
      else
        (first_number..last_number).map(&:to_s).join(",")
      end
    end

    private

    def validate_numbers(first_number, last_number)
      first_number.is_a?(Integer) && last_number.is_a?(Integer)
    end
  end
end
