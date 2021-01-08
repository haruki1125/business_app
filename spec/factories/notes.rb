FactoryBot.define do
  factory :note do
    fact              {'aaaaaaa'}
    memomemo                 {'aaaaaaaaaaaa'}
    tyusyo              {'aaaaaaaaaaa'}
    tennyou              {'aaaaaaaaaa'}
    association :user
  end
end