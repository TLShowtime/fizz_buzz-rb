# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz::Game do
  describe '#plain_numbers' do
    subject(:game) { described_class.new }

    it 'displays numbers from 10 to 15' do
      expect(game.display_plain_number(10, 15)).to eq('10,11,12,13,14,15')
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
end
