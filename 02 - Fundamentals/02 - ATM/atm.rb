def withdraw digits
  number = 1000

  return "Error. Maximum is 10000." unless digits <= 10000
  return "Error. Minimum is 200." unless digits >= 200
  return "Error. Insufficient balance." unless digits <= number

  number -= digits

  "Success. Your balance is now #{number}."
end

puts withdraw 1000