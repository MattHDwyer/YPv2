class CoachPolicy < ApplicationPolicy
    attr_reader :user, :coach
  
    def initialize(user, coach)
      @user = user
      @coach = coach
    end
  
    def new?
      user.role == Role.find(1)
    end


    # def update?
    #   user.admin? or not coach.published?
    # end
end

