# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  let(:subject) do
    described_class.new(username: 'TEST', password: 'Password123!@#')
  end
  
  describe '#authenticate' do
    it 'returns User if authenticated' do
      subject.save
      expect(subject.authenticate(subject.password).class).to eq subject.class
    end

    it 'returns false if not authenticated' do
      subject.save
      expect(subject.authenticate('wrong')).to be false
    end
  end
end
