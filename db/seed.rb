puts "这是用种子档会自动建立一个admin账号, 並且创建 10 个 public jobs, 以及10个hidden jobs"

create_account = User.create([email: 'ceshi@qq.com', password: '111111', password_confirmation: '1111111', is_admin: 'true'])
puts "Admin account created."

create_jos = for i in 1..10 do
  Job.create!([title: "Mission no.#{i}", description: "这是用种子建立的第 #{i} 个Public工作", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public jobs created."

create_jos = for i in 1..10 do
  Job.create!([title: "MIssion no.#{i+10}", description: "这是用种子建立的第 #{i+10} 个Hidden工作", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true"])
end
puts "10 Hidden jobs created."
