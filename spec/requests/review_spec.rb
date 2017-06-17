require 'rails_helper'

RSpec.describe 'Reviews', type: :request do
  let!(:review) {create(:review)}
  let(:review_id) {review.id}

  describe 'GET /reviews' do
    before { get '/reviews' }

    it 'returns reviews' do
      expect(json).not_to be_empty
      expect(json.first["id"]).to eq(review_id)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /reviews/:id' do
    before { get "/reviews/#{review_id}" }

    context 'when the record exists' do
      it 'returns the todo' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(review_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:review_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Review/)
      end
    end
  end

  describe 'POST /reviews' do
    # valid payload
    let(:valid_attributes) { { title: 'Awesome!', body: 'This has been an amazing experience', name: "Tafadzwa", email: "chombot@hotmail.com" } }

    context 'when the request is valid' do
      before { post '/reviews', params: valid_attributes }

      it 'creates a todo' do
        expect(json['title']).to eq('Awesome!')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/reviews', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Body can't be blank/)
      end
    end
  end

  # Test suite for PUT /reviews/:id
  describe 'PUT /reviews/:id' do
    let(:valid_attributes) { { title: 'Shopping' } }

    context 'when the record exists' do
      before { put "/reviews/#{review_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /reviews/:id
  describe 'DELETE /reviews/:id' do
    before { delete "/reviews/#{review_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end