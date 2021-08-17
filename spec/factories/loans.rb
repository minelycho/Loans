FactoryBot.define do
  factory :loan do
    borrower_name { "King Midas" }
    credit_score { 1 }
    status { "aproved" }
    association :user

    factory :loan_aprove do
      status { "aproved" }
    end
  end
end
