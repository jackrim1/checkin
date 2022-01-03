FactoryBot.define do

  factory :user do
    first_name { "Bob" }
    last_name { "Sacamento" }
    email { "bob@bob.com" }
    password { "bob123" }
    accepted_terms_at { Time.now }
    accepted_privacy_at { Time.now }
    terms_of_service { true }
  end

  factory :location do
    name { "White House" }
  end

end