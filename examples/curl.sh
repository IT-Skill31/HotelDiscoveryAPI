#!/usr/bin/env sh
# HotelDiscoveryAPI - cURL examples
# Usage: export RAPIDAPI_KEY=your_key && sh curl.sh

: "${RAPIDAPI_KEY:?Set the RAPIDAPI_KEY environment variable}"
HOST="hoteldiscoveryapi.p.rapidapi.com"

# 1. Search 4+ star hotels in Paris
curl -s "https://$HOST/api/hotels/search?city=Paris&rating=4" \
  -H "X-RapidAPI-Host: $HOST" \
  -H "X-RapidAPI-Key: $RAPIDAPI_KEY"

# 2. AI review summary in French (replace PLACE_ID with a placeId from the search)
# curl -s "https://$HOST/api/hotels/PLACE_ID/reviews/summary?lang=fr&max_sentences=3" \
#   -H "X-RapidAPI-Host: $HOST" \
#   -H "X-RapidAPI-Key: $RAPIDAPI_KEY"

# 3. Compare hotels against your preferences
# curl -s -X POST "https://$HOST/api/hotels/compare" \
#   -H "Content-Type: application/json" \
#   -H "X-RapidAPI-Host: $HOST" \
#   -H "X-RapidAPI-Key: $RAPIDAPI_KEY" \
#   -d '{"hotels":["PLACE_ID_1","PLACE_ID_2"],"user_preferences":{"budget":"medium","quiet":true}}'
