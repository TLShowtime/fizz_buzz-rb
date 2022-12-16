# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz::Console do
  describe '#talk_to_user' do
    subject(:console) { described_class.new }
    it 'catch an user input then show a message as output' do
      allow(console).to receive(:gets).and_return('Name')
      expect(console.talk_to_user('Hello from:')).to eq('Name')
    end
  end
end
