FactoryBot.define do
  factory :user do 
    email { Faker::Internet.email }
    password { "password"} 
    password_confirmation { "password" }
    firstname { "fn" }
    lastname { "fn" }
    aadhar { "fn" }
    phoneno { "fn" }
    
    
  end
end