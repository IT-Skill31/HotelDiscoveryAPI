<p align="center">
  <a href="https://rapidapi.com/appystore-appystore-default/api/hoteldiscoveryapi">
    <img src="assets/banner-2400x1260.png" alt="HotelDiscoveryAPI: hotel data and AI insights in one REST API" width="100%">
  </a>
</p>

<h1 align="center">
  <img src="assets/logo.svg" alt="HotelDiscoveryAPI logo" width="40" align="center">
  HotelDiscoveryAPI
</h1>

<p align="center">
  <strong>Hotel search, details, photos, reviews and AI-powered insights through one REST API.</strong>
</p>

<p align="center">
  <a href="https://rapidapi.com/appystore-appystore-default/api/hoteldiscoveryapi"><img src="https://img.shields.io/badge/RapidAPI-Subscribe-0055DA?logo=rapid&logoColor=white" alt="Available on RapidAPI"></a>
  <img src="https://img.shields.io/badge/API-REST%20%2F%20JSON-success" alt="REST">
  <img src="https://img.shields.io/badge/AI-sentiment%20%7C%20pricing%20%7C%20Q%26A-purple" alt="AI">
</p>

<p align="center">
  👉 <strong><a href="https://rapidapi.com/appystore-appystore-default/api/hoteldiscoveryapi">Get your free API key on RapidAPI</a></strong>
</p>

> This repository holds the documentation and code samples for HotelDiscoveryAPI.
> The API itself is hosted and billed through RapidAPI.

---

## ✨ Features

| Category | What you get |
|---|---|
| 🔎 **Search** | Hotels by city or GPS coordinates, with filters for price level, rating and radius |
| 📅 **Destination search** | Hotels for a destination and dates, with prices in your currency |
| ⌨️ **Autocomplete** | Destination and hotel suggestions as the user types |
| 🏨 **Hotel details** | Address, phone, website, rating, opening hours, and you choose which fields come back |
| 📸 **Photos & reviews** | Hotel photos in your chosen size and real guest reviews |
| 🗺️ **Nearby map** | Restaurants, transport, attractions and more around a hotel |
| 🧠 **AI sentiment** | Overall sentiment and key themes from guest reviews |
| 📝 **AI review summary** | A short summary of reviews in 25 languages |
| 💬 **Ask a hotel** | Free-text questions answered from real reviews ("Is it quiet at night?") |
| ⚖️ **AI comparison** | Rank 2 to 5 hotels by your own preferences |
| 💶 **Price estimate** | AI price estimates over a date range |
| 🎫 **Events impact** | Local events and how they may affect hotel prices |

---

## 🚀 Quick start

1. Subscribe on [RapidAPI](https://rapidapi.com/appystore-appystore-default/api/hoteldiscoveryapi) (a free plan is available).
2. Copy your `X-RapidAPI-Key`.
3. Make your first call:

```bash
curl --request GET \
  --url 'https://hoteldiscoveryapi.p.rapidapi.com/api/hotels/search?city=Paris&rating=4' \
  --header 'X-RapidAPI-Host: hoteldiscoveryapi.p.rapidapi.com' \
  --header "X-RapidAPI-Key: $RAPIDAPI_KEY"
```

More samples in [`examples/`](examples/): [cURL](examples/curl.sh) · [JavaScript](examples/javascript.mjs) · [Python](examples/python.py)

> 🔐 Never commit your API key. The samples read it from the `RAPIDAPI_KEY` environment variable.

---

## 📚 Endpoints

### Search

| Method | Endpoint | Description |
|---|---|---|
| `GET` | `/api/hotels/search` | Search by `city` or `location=lat,lng`, plus `radius`, `minPrice`, `maxPrice` (0-4), `rating` |
| `GET` | `/api/hotels/destination/search` | `destination`, `check_in_date`, `check_out_date`, `adults`, `children`, `currency` |
| `GET` | `/api/hotels/autocomplete/search` | Hotel suggestions (`input`) |
| `GET` | `/api/locations/autocomplete` | Destination suggestions with coordinates (`input`, `limit`, `lang`) |

### Hotel data

| Method | Endpoint | Description |
|---|---|---|
| `GET` | `/api/hotels/{placeId}` | Hotel details (`fields` lets you pick which fields come back) |
| `POST` | `/api/hotels/batch` | Details for up to 10 hotels in one call |
| `GET` | `/api/hotels/{placeId}/photos` | Photos (`maxwidth`, `maxResults`) |
| `GET` | `/api/hotels/{placeId}/reviews` | Guest reviews |
| `GET` | `/api/hotels/{placeId}/similar` | Similar hotels nearby |
| `GET` | `/api/hotels/{placeId}/nearby-map` | Points of interest around the hotel (`types`, `radius`) |

### AI insights

| Method | Endpoint | Description |
|---|---|---|
| `GET` | `/api/hotels/{placeId}/sentiment` | Sentiment analysis of reviews |
| `GET` | `/api/hotels/{placeId}/reviews/summary` | Review summary (`lang`, `max_sentences`) |
| `GET` | `/api/hotels/{placeId}/ask` | Answer a question (`q`) using real reviews |
| `POST` | `/api/hotels/compare` | Compare 2 to 5 hotels against `user_preferences` |
| `GET` | `/api/hotels/{placeId}/dynamic-pricing` | Price estimate between `start_date` and `end_date` (max 31 days) |
| `GET` | `/api/locations/{locationId}/events-impact` | Local events and their impact on prices (max 90 days) |

The full interactive reference, with response schemas and a live playground, is on the [RapidAPI page](https://rapidapi.com/appystore-appystore-default/api/hoteldiscoveryapi).

---

## 💡 Use cases

- Travel apps and booking comparison sites
- Chatbots and travel assistants ("find me a quiet 4★ hotel near the Eiffel Tower")
- Destination guides and city maps
- Hotel market and reputation analysis

---

## 🌍 AI languages

`en` `fr` `es` `de` `it` `nl` `sv` `da` `ru` `zh` `zh-TW` `ar` `hi` `bn` `ta` `te` `mr` `ur` `ja` `ko` `pt` `tr` `vi` `id` `th`

---

## 🤝 Support

- Questions or feature requests: open an [issue](../../issues) or use the Discussions tab on RapidAPI.
- Pricing and plans: [RapidAPI pricing page](https://rapidapi.com/appystore-appystore-default/api/hoteldiscoveryapi/pricing)

---

⭐ If this API is useful to you, star the repo, it helps other developers find it.
