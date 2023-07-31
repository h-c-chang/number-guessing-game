#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RANDOM_NUMBER=$(($RANDOM % 1000 + 1)) 
echo "Enter your username:"
read USERNAME
USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
if [[ -z $USER ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
else
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  GET_GAMES_PLAYED=$($PSQL "SELECT count(*) FROM games JOIN users USING(user_id) WHERE username = '$USERNAME'")
  GET_BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username = '$USERNAME'")
  echo -e "\nWelcome back, $USER! You have played $GET_GAMES_PLAYED games, and your best game took $GET_BEST_GAME guesses."
fi
echo -e "\nGuess the secret number between 1 and 1000:"
NUMBER_OF_GUESS=1
while true
do
  read USER_GUESS_NUMBER
  if [[ ! $USER_GUESS_NUMBER =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  else
    if [[ $USER_GUESS_NUMBER < $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:"
    elif [[ $USER_GUESS_NUMBER > $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    elif [[ $USER_GUESS_NUMBER == $RANDOM_NUMBER ]]
    then
      break
    fi
  fi
  ((NUMBER_OF_GUESS++))
done
echo -e "You guessed it in $NUMBER_OF_GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
INSERT_GAME=$($PSQL "INSERT INTO games (games_played, user_id) VALUES ($NUMBER_OF_GUESS, $USER_ID)")
SELECT_BEST=$($PSQL "SELECT best_game FROM users WHERE username = '$USERNAME'")
if [[ -z $SELECT_BEST ]]
then
  if [[ $SELECT_BEST < $NUMBER_OF_GUESS ]]
  then
  INSERT_BEST=$($PSQL "UPDATE users SET best_game = $NUMBER_OF_GUESS WHERE username = '$USERNAME'")
  fi
fi
