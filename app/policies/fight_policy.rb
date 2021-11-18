class FightPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.fighter == user || record.arena.fighter == user
  end

  def create?
    true
  end

  def update?
    record.fighter == user
  end

  def destroy?
    record.fighter == user || record.arena.fighter == user
  end
end
