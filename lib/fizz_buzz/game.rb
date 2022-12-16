# frozen_string_literal: true

module FizzBuzz
  # Game for fizzbuzz
  class Game
    def display_plain_number(first_number, last_number)
      if validate_numbers(first_number, last_number)
        (first_number..last_number).to_a.join(',')
      else
        'Not accepted numbers'
      end
    end

    def display_fizzbuzz(first_number, last_number)
      if validate_numbers(first_number, last_number)
        (first_number..last_number).map do |number|
          show_value_fizzbuzz(number)
        end.join(',')
      else
        'Not accepted numbers'
      end
    end

    private

    def validate_numbers(first_number, last_number)
      first_number.is_a?(Integer) && last_number.is_a?(Integer)
    end

    def show_value_fizzbuzz(number)
      value = ''
      value = 'fizz' if (number % 3).zero?
      value += 'buzz' if (number % 5).zero?

      value == '' ? number : value
    end
  end
end
