require 'faker'
require 'i18n'


module Factory
    class Dynamic
        Faker::Config.locale = 'en-US'
        def self.dynamic_data = {
                
                register_email: Faker::Internet.email,
                register_password: Faker::Lorem.characters(number: 10),
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                street_adress: Faker::Address.street_address,
                city: Faker::Address.city,
                zip_code: Faker::Number.number(digits: 5),
                phone: Faker::PhoneNumber.cell_phone,
                title: Faker::Lorem.word 
                }
   
        end
    end
