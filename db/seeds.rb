User.create(
  name: 'admin',
  email: 'admin@example.com',
  admin: true,
  password: 'password',
  password_confirmation: 'password'
)

50.times do |n|
  name =Faker::JapaneseMedia::OnePiece.character
  User.create(
    name: name,
    email: "sample#{n}@example.com",
    admin: false,
    password: "password",
    password_confirmation: "password"
  )
end

100.times do |i|
  description = Faker::JapaneseMedia::OnePiece.akuma_no_mi
  Task.create(
    name: "サンプルタスク#{i}",
    description: description,
    user_id: 1
  )
end