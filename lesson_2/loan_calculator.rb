def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  if num.include?('.')
    num.to_f().to_s() == num
  else
    num.to_i().to_s() == num
  end
end

prompt("Welcome to Loan Calculator!")

loop do # main loop
  loan_dollars = ''
  loop do
    prompt("What's the loan amount in dollars?")
    loan_dollars = Kernel.gets().chomp()

    if valid_number?(loan_dollars)
      break
    else
      prompt("Hm... that doesn't look like a valid number")
    end
  end

  apr_percent = ''
  loop do
    prompt("What's the Annual Percentage Rate (APR) e.g., 5 for 5%?")
    apr_percent = Kernel.gets().chomp()

    if valid_number?(apr_percent)
      break
    else
      prompt("Hm... that doesn't look like a valid number")
    end
  end

  loan_months = ''
  loop do
    prompt("What's the loan duration in months?")
    loan_months = Kernel.gets().chomp()

    if valid_number?(loan_months)
      break
    else
      prompt("Hm... that doesn't look like a valid number")
    end
  end

  # convert strings to nums
  loan_dollars = loan_dollars.to_f
  apr_percent = apr_percent.to_f / 100
  loan_months = loan_months.to_f

  # do calc
  monthly_interest_rate = apr_percent / 12.0
  monthly_payment = (
    loan_dollars *
    (
      monthly_interest_rate / (
        1 - (1 + monthly_interest_rate) ** (-loan_months)
      )
    )
  )

  prompt("Your monthly loan payment is $#{monthly_payment.round(2)}")

  prompt("Enter 'y' to do another calculation or anything else to quit")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the loan calculator. Good bye!")
