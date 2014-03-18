# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    url "MyString"
    name "MyString"
    imgUrl "MyString"
    user_id 1
  end
end
