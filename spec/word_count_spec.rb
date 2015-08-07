require('rspec')
require('word_count')

describe('String#word_count') do
  it('breaks a string into an array') do
    expect(('hello world').word_count()).to(eq(['hello','world']))
  end

  it('checks to see if a given word is in the array') do
    expect('hello world'.word_count('hello')).to(eq('hello'))
  end
end
