require 'rails_helper'

RSpec.describe "Years", type: :request do
  describe "Years Controller without view/api" do
    it 'returns true for leap year 2000' do
      get :leap_year, params: { year_input: 2000 }
      expect(response.message).eq 'Is a leap year.'
    end
  end
end
