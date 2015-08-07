require('rspec')
require('word_count')

describe('String#word_count') do
  it('breaks a string into an array') do
    expect(('hello world').word_count()).to(eq(['hello','world']))
  end
end
