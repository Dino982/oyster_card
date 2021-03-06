class Oystercard

MAXIMUM_BALANCE = 90
MINIMUM_CHARGE = 3
attr_reader :balance
attr_accessor :in_journey

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    fail "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def touch_in
    fail "Insufficient balance to touch in" if balance < 1
    @in_journey = true
  end

  def touch_out
    deduct(MINIMUM_CHARGE)
    @in_journey = false
  end

  def in_journey?
    !!@in_journey
  end

  private
  def deduct(fare)
    @balance -= fare
  end
end
