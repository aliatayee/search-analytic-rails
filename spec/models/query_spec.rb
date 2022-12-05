require 'rails_helper'

RSpec.describe Query, type: :model do
  long_content = Faker::Lorem.paragraph(sentence_count: 100)
  session = SecureRandom.urlsafe_base64(16)

  it 'should be valid' do
    query = Query.new(query: 'hello world', user_id: session)
    expect(query).to be_valid
  end
  it 'should be invalid, qury need to be more than 3' do
    query = Query.new(query: 'hi', user_id: session)
    expect(query).to_not be_valid
  end

  it 'should be invalid, query is more than 40' do
    search = Query.new(query: long_content, user_id: session)
    expect(search).to_not be_valid
  end

  it 'should be invalid, user_id is required' do
    query = Query.new(query: 'search')
    expect(query).to_not be_valid
  end

end
