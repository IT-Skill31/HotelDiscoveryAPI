// HotelDiscoveryAPI - JavaScript example (Node.js 18+, native fetch)
// Usage: RAPIDAPI_KEY=your_key node javascript.mjs

const HOST = 'hoteldiscoveryapi.p.rapidapi.com';
const KEY = process.env.RAPIDAPI_KEY;
if (!KEY) throw new Error('Set the RAPIDAPI_KEY environment variable');

async function call(path, options = {}) {
  const res = await fetch(`https://${HOST}${path}`, {
    ...options,
    headers: {
      'X-RapidAPI-Host': HOST,
      'X-RapidAPI-Key': KEY,
      'Content-Type': 'application/json',
      ...options.headers
    }
  });
  if (!res.ok) throw new Error(`HTTP ${res.status}: ${await res.text()}`);
  return res.json();
}

// Search hotels, then ask a question about the first result
const search = await call('/api/hotels/search?city=Lisbon&rating=4');
console.log(search);

const first = search.data?.[0];
if (first?.place_id) {
  const q = encodeURIComponent('Is the hotel quiet at night?');
  const answer = await call(`/api/hotels/${first.place_id}/ask?q=${q}&lang=en`);
  console.log(answer);
}
