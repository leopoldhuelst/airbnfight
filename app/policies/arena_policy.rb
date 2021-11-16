class ArenaPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def index
  #   @arenas = policy_scope(Restaurant).order(created_at: :desc)
  # end

  def edit?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.fighter == user
  end

  def destroy?
    record.fighter == user
  end

end
