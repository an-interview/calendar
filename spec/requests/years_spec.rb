require 'rails_helper'

RSpec.describe "Years", type: :request do
  describe "Years Controller without view/api" do
    it 'returns status 200 for year 2000' do
      get '/leap_year', params: { :format => 'json', year_input: 2000 }

      expect(response).to have_http_status(200)
    end

    it 'returns 400 code for year 2001' do
      get '/leap_year', params: { :format => 'json', year_input: 2001 }

      expect(response).to have_http_status(400)
    end

    it 'return 400 for year 1700' do
      get '/leap_year', params: { :format => 'json', year_input: 1700 }

      expect(response).to have_http_status(400)
    end

    it 'return 200 for year 2008' do
      get '/leap_year', params: { :format => 'json', year_input: 2008 }

      expect(response).to have_http_status(200)
    end
  end
end
