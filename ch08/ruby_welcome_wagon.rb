class RubyWelcomeWagon
  def hyphen_message
    <<-EOM
      Welcome to the world of Ruby!
      In this method, the EOM doesn't have to be flush left!
                 EOM
  end

  def squiggly_message
    <<~EOM
      Welcome to the world of Ruby!
      We're happy you're here!
    EOM
  end
end
