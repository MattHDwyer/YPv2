class SportPolicy < ApplicationPolicy
    attr_reader :user, :sport
  
    def initialize(user, sport)
      @user = user
      @sport = sport
    end
  
    def update?
      user.admin? or not sport.published?
    end
end