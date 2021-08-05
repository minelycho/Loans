class Loan < ApplicationRecord
  validates :borrower_name, presence: true
  validates :credit_score, presence: true
  validates :status, inclusion: { in: %w(denied aproved on_hold)},
    presence: true
  belongs_to :user
end
