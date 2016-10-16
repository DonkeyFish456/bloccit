require 'random_data'

#Create Topics
15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end
topics = Topic.all

#Create SponosoredPosts
10.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: 'Sponsored-' + RandomData.random_sentence,
    body: 'Sponsored-' + RandomData.random_paragraph,
    price: 100
  )
end

#Create Posts
50.times do
  Post.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#Create Questions
100.times do
  Question.create!(
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph,
      resolved: false
  )
end

Post.find_or_create_by(title: 'unique title', body: 'unique body' )

puts 'Seed finished'
puts "#{Topic.count} topics created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"