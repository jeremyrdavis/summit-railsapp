FactoryGirl.define do
  factory :user do
    name  "Jeremy Davis"
    email "jeremy.davis@redhat.com"
    password "foobar"
    password_confirmation "foobar"
    manager { FactoryGirl.build(:manager) }
  end

  factory :manager, class: User do
    name  "Derrick Kittler"
    email "dkittler@redhat.com"
    password "foobar"
    password_confirmation "foobar"
  end
end