FactoryBot.define do
  factory :quotation do
    author_name { 'Test Author' }
    category { 'Humour' }
    quote { 'Best is yet to come' }
  end

  factory :admin, class: User do
    email { 'joe_admin@ait.asia' }
    password { 'password' }
    password_confirmation { 'password' }
    is_admin { true }
    status { 'A' }
    confirmed_at { 1.day.ago }
  end

  factory :user, class: User do
    email { 'joe_user@ait.asia' }
    password { 'password' }
    password_confirmation { 'password' }
    is_admin { false }
    status { 'A' }
  end

  factory :committee, class: Tag do
    name { 'Academic' }
    email { 'test@help.com' }
  end

  factory :su_member, class: SuMember do
    first_name { 'Test' }
    last_name { 'test' }
    designation { 'President' }
    nationality { 'Nepal' }
    department { 'SET' }
    program {'CS'}
    tag_id {13}
  end
end
