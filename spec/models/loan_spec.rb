require 'rails_helper'

RSpec.describe Loan, type: :model do

  describe 'validation test' do
    it 'borrower_name presence' do
      expect(build(:loan, borrower_name: nil)).not_to be_valid
    end

    it 'credit_score presence' do
      expect(build(:loan, credit_score: nil)).not_to be_valid
    end

    it 'status presence' do
      expect(build(:loan, status: nil)).not_to be_valid
    end
  end
  #describe es metodos o clases
  describe 'checks for inclusion of status' do
    context 'valid data' do
      ['denied', 'aproved', 'on_hold'].each do |valid_status|

        it 'is valid with denied, aproved, on_hold'  do
          expect(build(:loan, status: valid_status)).to be_valid
        end
      end
    end

    context 'invalid data' do
      it 'is invalid without denied, aproved, on_hold' do
        expect(build(:loan, status: 'nothing')).not_to be_valid
      end
    end
  end

end
