defmodule Finex do
  @moduledoc """
  Documentation for `Finex`.
  """

  @doc """
  Simple Interest Calculation

  It takes principle(p), time_perio(t), rate_of_interest(r) as params
  ## Examples

      iex> Finex.simple_interest(1000,2,1.5)
      

  """
  def simple_interest(p, t, r, options \\ [decimals: 2]) do
    decimals = Keyword.get(options, :decimals)
    i = p * t * r / 100
    p + i
  end

  @doc """
  Simple Interest Calculation using the following formula

  ```
  A=P(1+r/n)^(nt)
  ```
  Here,

  * A = final amount
  * P = initial principal balance
  * r = interest rate
  * n = number of times interest applied per time period
  * t = number of time periods elapsed


  ## Examples

  """
  def compound_interest(p, t, r, options \\ [decimals: 2, interest_as: :yearly]) do
    ci = :math.pow(p * r / 100, t)
  end

  @doc """
  Formula: (P.r.(1+r)n) / ((1+r)n – 1)

  * P = loan amount i.e principal amount
  * R = Interest rate per month
  * T = Loan time period in year

  """
  def emi(p, r, t) do
    # one month interest 
    r = r / (12 * 100)
    # one month period 
    t = t * 12
    p * r * :math.pow(1 + r, t) / (:math.pow(1 + r, t) - 1)
  end
end
