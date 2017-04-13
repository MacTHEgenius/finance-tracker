class FriendSearch
  
  def initialize(options=[:first_name, :last_name, :email])
  end
  
  def search(param)
    return User.none if param.blank?
    
    param.strip!
    param.downcase!
    (first_name_matches(param) + (last_name_matches(param)) + email_matches(param)).uniq
  end
  
  private
  
  def first_name_matches(param)
    matches('first_name', param)
  end
  
  def last_name_matches(param)
    matches('last_name', param)
  end
  
  def email_matches(param)
    matches('email', param)
  end
  
  def matches(field_name, param)
    User.where("lower(#{field_name}) like ?", "%#{param}%")
  end
  
end