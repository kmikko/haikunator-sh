#!/bin/bash

ADJECTIVES=(
  autumn hidden bitter misty silent empty dry dark summer
  icy delicate quiet white cool spring winter patient
  twilight dawn crimson wispy weathered blue billowing
  broken cold damp falling frosty green long late lingering
  bold little morning muddy old red rough still small
  sparkling throbbing shy wandering withered wild black
  young holy solitary fragrant aged snowy proud floral
  restless divine polished ancient purple lively nameless
)

NOUNS=(
  waterfall river breeze moon rain wind sea morning
  snow lake sunset pine shadow leaf dawn glitter forest
  hill cloud meadow sun glade bird brook butterfly
  bush dew dust field fire flower firefly feather grass
  haze mountain night pond darkness snowflake silence
  sound sky shape surf thunder violet water wildflower
  wave water resonance sun wood dream cherry tree fog
  frost voice paper frog smoke star
)

function random_between() {
  local min=${1-0}
  local max=${2-9}
  echo $((RANDOM % (max - min + 1) + min))
}

function random_from_list() {
  local ARR=("$@")
  echo "${ARR[RANDOM % ${#ARR[@]}]}"
}

ADJECTIVE=$(random_from_list "${ADJECTIVES[@]}")
NOUN=$(random_from_list "${NOUNS[@]}")
TOKEN=$(random_between 1000 9999)

echo "$ADJECTIVE"-"$NOUN"-"$TOKEN"
