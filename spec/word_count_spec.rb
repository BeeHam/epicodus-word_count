require('rspec')
require('word_count')
# require('pry')

describe('String#word_count') do
  it('changes entered text to all lowercase') do
    expect(('Hello world').word_count()).to(eq('hello world'))
  end

  it('breaks a string into an array') do
    expect(('hello world').word_count()).to(eq(['hello','world']))
  end

  it('checks to see if a given word is in the array') do
    expect('hello world'.word_count('hello')).to(eq('hello'))
  end

  it('counts every instance of a word') do
    expect('monday monday so good to me'.word_count('monday')).to(eq(2))
  end
end
