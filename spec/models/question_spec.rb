require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title: 'My Question', body: 'How do I ask a question?', resolved: false) }

  describe 'attributes' do
    it 'should have title, body, and resolved attributes' do
      expect(question).to have_attributes(title: 'My Question', body: 'How do I ask a question?', resolved: false)
    end
  end
end
