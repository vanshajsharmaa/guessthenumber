-- Tiny Number Game in Lua

-- Function to generate a random number within a specified range
function generateRandomNumber(min, max)
    return math.random(min, max)
end

-- Function to prompt the user for a guess and check if it's correct
function playGame()
    -- Define the range of numbers
    local min = 1
    local max = 10

    -- Generate a random number
    local targetNumber = generateRandomNumber(min, max)

    print("Welcome to the Tiny Number Game!")
    print("I have chosen a number between " .. min .. " and " .. max .. ". Try to guess it!")

    -- Loop for the guessing process
    local guess
    local attempts = 0

    repeat
        -- Prompt the user for their guess
        print("Enter your guess: ")
        guess = tonumber(io.read())  -- Get user input and convert to number

        -- Validate input
        if not guess then
            print("Please enter a valid number.")
        else
            attempts = attempts + 1
            -- Check if the guess is correct
            if guess < targetNumber then
                print("Too low! Try again.")
            elseif guess > targetNumber then
                print("Too high! Try again.")
            else
                print("Congratulations! You guessed the number " .. targetNumber .. " in " .. attempts .. " attempts.")
            end
        end
    until guess == targetNumber
end

-- Start the game
playGame()
