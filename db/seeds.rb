p "create Users"
User.create!(
  email: 'user1@example.com',
  password: 'testtest',
  name: 'タナカ',
  self_introduction: 'タナカです',
  sex: 0,
  img_name: open("#{Rails.root}/db/initial_images/1.jpg")
)
User.create!(
  email: 'user2@example.com',
  password: 'testtest',
  name: 'サトウ',
  self_introduction: 'サトウです',
  sex: 0,
  img_name: open("#{Rails.root}/db/initial_images/2.jpg")
)
User.create!(
  email: 'user3@example.com',
  password: 'testtest',
  name: 'ササキ',
  self_introduction: 'ササキです',
  sex: 1,
  img_name: open("#{Rails.root}/db/initial_images/3.jpg")
)
User.create!(
  email: 'user4@example.com',
  password: 'testtest',
  name: 'ヤマダ',
  self_introduction: 'ヤマダです',
  sex: 1,
  img_name: open("#{Rails.root}/db/initial_images/4.jpg")
)