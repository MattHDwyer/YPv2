class CoordinatorPolicy
    attr_reader :user, :coordinator
  
    def initialize(user, coordinator)
      @user = user
      @coordinator = coordinator
    end
  
    def update?
      user.admin? or not coordinator.published?
    end
  end