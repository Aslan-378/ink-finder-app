class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user
  end

  def accept?
    true
  end

  def destroy?
    true
  end

  def create?
    true
  end
end
