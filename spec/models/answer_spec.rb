require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:answer) {Answer.create!(body: 'good answer') }

  describe 'attributes' do
    it 'should have a body attribute' do
      expect(answer).to have_attributes(body: 'good answer')
    end
  end
end
