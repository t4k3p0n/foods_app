FactoryBot.define do
    factory :micropost do
     content   { 'content' }
     picture   { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
     association :user
    end
end