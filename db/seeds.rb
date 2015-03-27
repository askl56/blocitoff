require 'faker'

5.times do
  todo_lists.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end
todo_lists = Todo_list.all

30.times do
  todo_items.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end
todo_item = Todo_item.all

puts "Seed finished"
puts "#{Todo_list.count} to-do lists created"
puts "#{Todo_item.count} to-do items created"
