FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
<<<<<<< HEAD

=======
    
>>>>>>> d73a22a571763c0494413a978350d5938ec0e1d2
    factory :admin do
      admin true
    end
  end
end
