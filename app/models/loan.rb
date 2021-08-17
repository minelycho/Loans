class Loan < ApplicationRecord
  validates :borrower_name,
    :credit_score,
    :status,
    presence: true

  validates :status, inclusion: { in: %w(denied aproved on_hold)}

  belongs_to :user
end
