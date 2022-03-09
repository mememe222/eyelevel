FactoryBot.define do
  factory :art do
    title                 { 'test' }
    memo                  { 'memo' }

    after(:build) do |art|
      art.images.attach(io: File.open('public/images/hero.jpg'), filename: 'hero.png')
    end
  end
end