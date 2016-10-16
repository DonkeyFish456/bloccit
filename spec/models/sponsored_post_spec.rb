require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:name) { "Sponsored-" + RandomData.random_sentence }
  let(:description) { "Sponsored-" + RandomData.random_paragraph }
  let(:title) { "Sponsored-" + RandomData.random_sentence }
  let(:body) { "Sponsored-" + RandomData.random_paragraph }
  let(:price) { 100 }
  let(:topic) { Topic.create!(name: name, description: description) }
  let(:sponsored_post) { topic.sponsored_posts.create!(title: title, body: body, price: price) }
  it { is_expected.to belong_to(:topic) }

  describe 'attributes' do
    it 'should have title, body and price attributes' do
      expect(sponsored_post).to have_attributes(title: title, body: body, price: price)
    end
  end
end
