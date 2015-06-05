class PagesController < ApplicationController
  def social
  end

  def index
    @people = Person.all.order("created_at DESC")
  end
end
