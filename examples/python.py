"""HotelDiscoveryAPI - Python example.

Usage: pip install requests && RAPIDAPI_KEY=your_key python python.py
"""
import os

import requests

HOST = "hoteldiscoveryapi.p.rapidapi.com"
KEY = os.environ.get("RAPIDAPI_KEY")
if not KEY:
    raise SystemExit("Set the RAPIDAPI_KEY environment variable")

HEADERS = {"X-RapidAPI-Host": HOST, "X-RapidAPI-Key": KEY}

# Destination search with dates and prices in euros
resp = requests.get(
    f"https://{HOST}/api/hotels/destination/search",
    headers=HEADERS,
    params={
        "destination": "Rome",
        "check_in_date": "2026-12-10",
        "check_out_date": "2026-12-13",
        "adults": 2,
        "currency": "EUR",
    },
    timeout=30,
)
resp.raise_for_status()
print(resp.json())
