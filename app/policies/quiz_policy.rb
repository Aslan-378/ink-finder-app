class QuizPolicy < A
  pplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

    def new?
      true
    end
end
