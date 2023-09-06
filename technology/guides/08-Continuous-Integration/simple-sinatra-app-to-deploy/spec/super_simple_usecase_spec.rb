require 'super_simple_usecase'

describe SuperSimpleUsecase do
  let(:use_case) { described_class.new }

  context 'given url is localhost' do
    it 'returns Deploy me to Heroku!' do
      expect(use_case.execute('http://localhost:1234')).to eq('Deploy me to Heroku, please!')
    end
  end

  context 'given url is heroku' do
    it 'returns one item total' do
      expect(use_case.execute('https://super-simple-app.herokuapp.com')).to eq("I'm deployed to Heroku!")
    end
  end

end
