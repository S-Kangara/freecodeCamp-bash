#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# -------------------------
# USERNAME INPUT
# -------------------------
echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

# -------------------------
# NEW USER
# -------------------------
if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")

  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

# -------------------------
# EXISTING USER
# -------------------------
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID;")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID;")

  # clean output
  GAMES_PLAYED=$(echo $GAMES_PLAYED | xargs)
  BEST_GAME=$(echo $BEST_GAME | xargs)

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# -------------------------
# GAME START
# -------------------------
SECRET_NUMBER=$(( RANDOM % 10 + 1 ))

echo "Guess the secret number between 1 and 10:"
read GUESS

GUESS_COUNT=1

while [[ $GUESS != $SECRET_NUMBER ]]
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi

  read GUESS
  ((GUESS_COUNT++))
done

echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"

# -------------------------
# SAVE GAME TO DATABASE
# -------------------------
INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $GUESS_COUNT);")

# game completed successfully