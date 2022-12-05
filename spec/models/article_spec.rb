require 'rails_helper'

RSpec.describe Article, type: :model do
  title = "This is a valid title"
  paragraph = Faker::Lorem.paragraph(sentence_count: 10)
  invalid_title = 'Test'
  invalid_content = 'invalid'
  long_content = Faker::Lorem.paragraph(sentence_count: 100)

  it 'should be valid' do
    article = Article.new(title: title, content: paragraph)
    expect(article).to be_valid
  end
  it 'is invalid because content should be present' do
    article = Article.new(title: title)
    expect(article).to_not be_valid
  end

  it 'is invalid, title has to be at least 10 character' do
    article = Article.new(title: invalid_title, content: paragraph)
    expect(article).to_not be_valid
  end

  it 'is invalid, content should be at least 10 carachter' do
    article = Article.new(title: title, content: invalid_content)
    expect(article).to_not be_valid
  end

  it 'is not valid if body is more than 400' do
    article = Article.new(title: title, content: long_content)
    expect(article).to_not be_valid
  end
end
