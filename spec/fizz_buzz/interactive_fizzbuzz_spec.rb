# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz::InteractiveFizzBuzz do
  subject(:game) { described_class.new }

  it 'play fizzbuzz from 1 to 5, then play from 12 to 15 then exit' do
    allow(game.instance_variable_get(:@console)).to receive(:gets).and_return('1', '5', "\n", '12', '15', 'exit')
    expect { game.play }.to output(
      "Enter first number: \nEnter second number: \n1,2,fizz,4,buzz\n" \
      "Type 'exit' to exit, otherwise enter any input\n" \
      "Enter first number: \nEnter second number: \nfizz,13,14,fizzbuzz\n" \
      "Type 'exit' to exit, otherwise enter any input\n"
    ).to_stdout
  end

  it 'does not accept string values, then exit' do
    allow(game.instance_variable_get(:@console)).to receive(:gets).and_return('a', '5', 'exit')
    expect { game.play }.to output(
      "Enter first number: \nEnter second number: \nInvalid input\n" \
      "Type 'exit' to exit, otherwise enter any input\n"
    ).to_stdout
  end

  it 'does not accept float values, then exit' do
    allow(game.instance_variable_get(:@console)).to receive(:gets).and_return('5', '4.1', 'exit')
    expect { game.play }.to output(
      "Enter first number: \nEnter second number: \nInvalid input\n" \
      "Type 'exit' to exit, otherwise enter any input\n"
    ).to_stdout
  end
end
