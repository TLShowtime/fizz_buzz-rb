# frozen_string_literal: true

module FizzBuzz
  # Console for user inputs and outputs
  class Console
    def talk_to_user(message_to_user)
      show_response(message_to_user)
      obtain_user_input
    end

    def obtain_user_input
      gets.chomp
    end

    def show_response(message_to_user)
      puts message_to_user
    end
  end
end
