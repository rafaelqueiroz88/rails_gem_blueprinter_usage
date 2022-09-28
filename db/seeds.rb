require 'securerandom'

p 'Starting seed process'

User.create([
  { uuid: SecureRandom.uuid,
    name: 'Rafael',
    email: 'rafael@test.com',
    phone_number: '+55 123456789' },
  { uuid: SecureRandom.uuid,
    name: 'Queiroz',
    email: 'queiroz@test.com',
    phone_number: '+55 123456799' },
  { uuid: SecureRandom.uuid,
    name: 'Castro',
    email: 'castro@test.com',
    phone_number: '+55 123456899' }
])

Product.create([
  { name: 'Playstation 5',
    user_id: 1 },
  { name: 'Xbox One',
    user_id: 2 },
  { name: 'Gamer PC',
    user_id: 3 }
])

p 'Seed process has finished'
