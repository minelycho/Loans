require 'rails_helper'

RSpec.describe Loan, type: :model do
  it { should validate_presence_of(:borrower_name)}
  it { should validate_presence_of(:credit_score)}
  it { should validate_presence_of(:status)}
  it { should validate_inclusion_of(:status).in_array(['denied', 'aproved', 'on_hold']) }
  it 'belongs to a user'
  it { should belong_to(:user) }

end
