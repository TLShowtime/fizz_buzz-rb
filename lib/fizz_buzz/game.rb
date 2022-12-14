module FizzBuzz
  class Game
    def display_plain_number(first_number, last_number)
      if !self.validate_numbers(first_number, last_number)
        "Not accepted numbers"
      else
        next_number = first_number
        number_series = ""
        while next_number <= last_number
            number_series += "#{next_number}"
            number_series += (next_number != last_number ?  "," : "")
            next_number += 1
        end
        number_series
      end
    end

    def validate_numbers(first_number, last_number)
      if first_number.is_a?(Integer) && last_number.is_a?(Integer)
        true
      else
        false
      end
    end

  end
end
