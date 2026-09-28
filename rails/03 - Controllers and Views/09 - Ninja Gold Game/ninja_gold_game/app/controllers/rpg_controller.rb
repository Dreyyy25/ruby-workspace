class RpgController < ApplicationController
  def index
    session[:gold] ||= 0
    session[:activities] ||= []

    @gold = session[:gold]
    @activities = session[:activities]
  end

  def farm
    earn_gold(10, 20, "farm")
  end

  def cave
    earn_gold(15, 20, "cave")
  end
  
  def house
    earn_gold(5, 10, "house")
  end

  def casino
    gold = rand(-50..50)

    session[:gold] += gold

    if gold >= 0
      session[:activities] << "Earned #{gold} gold from the Casino."
    else
      session[:activities] << "Lost #{gold.abs} gold from the Casino."
    end

    redirect_to root_path
  end

  private 

  def earn_gold(min, max, location)
    gold = rand(min..max)

    session[:gold] += gold

    session[:activities] << "Earned #{gold} gold from the #{location}."

    redirect_to root_path
  end
end
