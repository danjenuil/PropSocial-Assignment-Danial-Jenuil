puts 'Seeding data ...'
Admin.create({email: 'admin@example.com', password: 'admin123', password_confirmation: 'admin123'})
puts 'Seeding completed :)'