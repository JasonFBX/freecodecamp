#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $WINNER != winner ]]
then
# get teams
if [[ $YEAR != "year" ]]
  then
  INSERT_TEAMS_GAMS=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER'),('$OPPONENT') ON CONFLICT (name) DO NOTHING;
  INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', (SELECT team_id FROM teams WHERE name = '$WINNER'), (SELECT team_id FROM teams WHERE name = '$OPPONENT'), $WINNER_GOALS, $OPPONENT_GOALS);")
  fi
fi
done
