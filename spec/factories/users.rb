# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name                  { "abe" }
    email                 { "kkk@gmail.com" }
    password              { "00000000" }
    password_confirmation { "00000000" }
    year                  { 2018 }
    uni                   { "早稲田大学" }
    gender                { "male" }
    section
    authority
  end
end
