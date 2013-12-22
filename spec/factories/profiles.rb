# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    last_name "MyString"
    first_name "MyString"
    username "MyString"
    password "MyString"
    email "MyString"
    bio "MyText"
    photo "MyString"
    activity_id 1
    location "MyString"
    preferred_gender "MyString"
  end
end
