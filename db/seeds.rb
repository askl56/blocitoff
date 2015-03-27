require 'faker'

5.times do
  TodoList.create!(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph
  )
end
todo_lists = TodoList.all

30.times do
  TodoItem.create!(
  	content: Faker::Lorem.sentence
  )
end
todo_item = TodoItem.all

puts "Seed finished"
puts "#{TodoList.count} to-do lists created"
puts "#{TodoItem.count} to-do items created"
