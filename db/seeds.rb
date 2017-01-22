# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "这个种子档会自动建立一个admin账号, 並且创建 10 个 public Missions, 以及10个 hidden Missions"

create_account = User.create([email: 'ceshi@qq.com', password: '111111', password_confirmation: '111111', is_admin: 'true'])
puts "Admin account created."

create_jos = for i in 1..10 do
  Job.create!([title: "Mission no.#{i}", description: "这是用种子建立的第 #{i} 个Public任务", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public Missions created."

create_jos = for i in 1..10 do
  Job.create!([title: "Job no.#{i+10}", description: "这是用种子建立的第 #{i+10} 个Hidden任务", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true"])
end
puts "10 Hidden Missions created."
