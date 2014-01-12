def fibonacci(number)
  return (number <= 2 ? 1 : fibonacci(number - 1) + fibonacci(number - 2))
end
