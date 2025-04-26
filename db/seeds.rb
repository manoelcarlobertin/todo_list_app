User.create!(email: "admin1@email.com", password: "123456")

5.times do
  list = TaskList.create!(title: Faker::Lorem.word, user: User.first)

  10.times do
    list.task_items.create!(description: Faker::Lorem.sentence, done: [ true, false ].sample)
  end
end

puts "Created #{TaskList.count} task lists with #{TaskItem.count} task items"
puts "Created #{User.count} users #{User.first.email}"
