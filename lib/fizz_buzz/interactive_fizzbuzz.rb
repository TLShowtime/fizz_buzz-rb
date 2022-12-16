# frozen_string_literal: true

module FizzBuzz
  # Program to interact fizzbuzz with a console
  class InteractiveFizzBuzz
    def initialize
      @game = FizzBuzz::Game.new
      @keep_playing = true
      @console = FizzBuzz::Console.new
    end

    def play
      while @keep_playing
        first_number = @console.talk_to_user('Enter first number: ')
        second_number = @console.talk_to_user('Enter second number: ')
        if validate_user_numbers(first_number, second_number)
          @console.show_response(@game.display_fizzbuzz(first_number.to_i, second_number.to_i))
        else
          @console.show_response('Invalid input')
        end
        @keep_playing = false if @console.talk_to_user("Type 'exit' to exit, otherwise enter any input") == 'exit'
      end
    end

    def validate_user_numbers(first_number, second_number)
      regex = /^(\d)+$/
      (first_number.match? regex) && (second_number.match? regex)
    end
  end
end
