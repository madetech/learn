class SuperSimpleUsecase
  def execute(url)
    return "I'm deployed to Heroku!" if url.include? "herokuapp"

    'Deploy me to Heroku, please!'
  end
end
