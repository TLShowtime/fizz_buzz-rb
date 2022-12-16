# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz::Game do
  describe '#plain_numbers' do
    subject(:game) { described_class.new }

    it 'displays numbers from 10 to 15' do
      expect(game.display_plain_number(10, 15)).to eq('10,11,12,13,14,15')
    end

    it 'displays numbers from 0 to 5' do
      expect(game.display_plain_number(0, 5)).to eq('0,1,2,3,4,5')
    end

    it 'does not accept strings as paramaters' do
      expect(game.display_plain_number('2', 12)).to eq('Not accepted numbers')
    end

    it 'does not accept float as parameters' do
      expect(game.display_plain_number(2, 23.2)).to eq('Not accepted numbers')
    end
  end

  describe '#fizzbuzz' do
    subject(:game) { described_class.new }

    it 'displays fizzbuzz from 4 to 15' do
      expect(game.display_fizzbuzz(4, 15)).to eq('4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz')
    end

    it 'does not accept strings as paramaters' do
      expect(game.display_fizzbuzz('2', 12)).to eq('Not accepted numbers')
    end

    it 'does not accept float as parameters' do
      expect(game.display_fizzbuzz(2, 23.2)).to eq('Not accepted numbers')
    end
  end

  describe '#play' do
    subject(:game) { described_class.new }

    it 'play fizzbuzz from 4 to 15, then exit' do
      allow(game).to receive(:gets).and_return('4', '15', 'exit')
      expect { game.play }.to output(
        "Enter first number: \nEnter second number: \n" \
        "4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz\n" \
        "Type 'exit' to exit, otherwise enter any input\n"
      ).to_stdout
    end

    it 'play fizzbuzz from 1 to 5, then play from 3 to 6 then exit' do
      allow(game).to receive(:gets).and_return('1', '5', "\n", '3', '6', 'exit')
      expect { game.play }.to output(
        "Enter first number: \nEnter second number: \n1,2,fizz,4,buzz\n" \
        "Type 'exit' to exit, otherwise enter any input\n" \
        "Enter first number: \nEnter second number: \nfizz,4,buzz,fizz\n" \
        "Type 'exit' to exit, otherwise enter any input\n"
      ).to_stdout
    end

    it 'does not accept string values, then exit' do
      allow(game).to receive(:gets).and_return('a', '5', 'exit')
      expect { game.play }.to output(
        "Enter first number: \nEnter second number: \nInvalid input\n" \
        "Type 'exit' to exit, otherwise enter any input\n"
      ).to_stdout
    end

    it 'does not accept float values, then exit' do
      allow(game).to receive(:gets).and_return('5', '4.1', 'exit')
      expect { game.play }.to output(
        "Enter first number: \nEnter second number: \nInvalid input\n" \
        "Type 'exit' to exit, otherwise enter any input\n"
      ).to_stdout
    end
  end
end
