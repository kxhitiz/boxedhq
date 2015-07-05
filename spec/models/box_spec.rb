require 'rails_helper'

RSpec.describe Box, type: :model do

  context '#get_type' do
    it 'should return humanized string for box type' do
      box = build(:box) #Box.new(type: '10')
      expect(box.get_type).to eql('Private')
    end
  end
end
