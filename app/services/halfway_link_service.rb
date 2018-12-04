class HalfwayLinkService
  def initialize(user = nil)
    @user = user
  end

  def process!
    @halfway_link = HalfwayLink.create!(user: @user, token: new_token)
    puts @halfway_link.token
    return @halfway_link
  end

  protected 
  def new_token
    do_generate = true
    while do_generate
      token_str = SecureRandom.urlsafe_base64(token_length)
      if HalfwayLink.where(token: token_str).empty?
        do_generate = false
        return token_str
      end
    end
  end

  def token_length
    5 + rand(15)
  end
end