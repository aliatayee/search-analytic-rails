require 'rails_helper'

RSpec.describe 'Articles', type: :request do
  session = SecureRandom.urlsafe_base64(16)
  queries = ['hello', 'what is a good car', 'this is good', 'That is nice']
  Article.create(title: 'This is an article title', content: 'This is the article content for test')
  Article.create(title: 'What is the best way to learn ruby',
                 content: 'Learning to code is easier than you may think (even if you’re brand new).')

  queries.each do |query|
    Query.create(
      query:,
      user_id: session
    )
  end
  describe 'GET /articles' do
    it 'works!' do
      get articles_path
      expect(response).to have_http_status(200)
    end

    it 'should have an article title' do
      get articles_path
      expect(response.body).to include('This is an article title')
    end

    it 'should have an article content' do
      get articles_path
      expect(response.body).to include('This is the article content for test')
    end

    it 'should have a <what is a good car> search query' do
      get articles_trends_path
      expect(response.body).to include('what is a good car')
    end
  end
end
