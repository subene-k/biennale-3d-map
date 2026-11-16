# Biennale Fort Maps — 3D map with walkthrough hotspots

Single-file Three.js map of the India Biennale ’26 venues (Red Fort, Purana Qila).
Open `index.html` (add `#red-fort` or `#purana-qila` to the URL to pick a venue).

- `original/index.html` – the team member's version as received (artifact "Biennale Fort Maps", version 1794731096-aa61).
- `index.html` – current version with the Matterport-style walkthrough added.

## What was added (Matterport-style walkthrough)

1. **Floor hotspots** – circles on the ground along every walkway (about every 14 m), like Matterport sweeps.
   In the 360° view: tap a circle (or anywhere on the ground) to glide there; ↑/↓ keys step forward/back.
   Hotspots you can't see directly are reached along the walkways.
2. **Every place has an anchor hotspot** (amber circle) – the spot you stand to see it. Route end points
   on the 3D map now connect to these hotspots. In Manage, a place's hotspot can be pinned by hand
   ("Use where I stand in 360° view") or left on Automatic. Stored as `hs: [x, z]` on the point.
3. **Path finder** – "Find a path" card in the 360° view: From (a place, or Where I am) → To.
   A* search over the hotspot graph, drawn as animated chevrons on the ground (and on the 3D map),
   with Walk it / pause / step ‹ › controls.
4. **Hand-off buttons** – "Walk here in 3D" on place cards and details, and "Walk this route in 3D" in
   Directions (follows all stops in order).

## Not done yet

- No live connection to the real Matterport tour (matterport.kr8iv.io) – that needs the Matterport
  model ID and a Showcase SDK key. The hotspot data (`hs`, anchor ids) is ready to map to Matterport sweep IDs.
- Hotspot code is in the block headed `Walkthrough: Matterport-style floor hotspots` in `index.html`.

All code is an unverified draft: test it (and run your usual review/SAST) before production use.

## Versions

- `v1/index.html` – version 1 (live link: https://claude.ai/artifact/CqFRwRHMUW1q6NUhMvZCef).
- `v2/index.html` – version 2 (also copied to `index.html`):
  - The top-left panel is hidden on load. Tapping a place icon opens it on that place; × hides it again;
    the round ☰ button top-left reopens it.
  - Purana Qila opens on a closer, lower angle (camera `home` pos [-368.5,241.4,453.5], target [50.2,0,24.4], fitted to the reference screenshot; in windows narrower than that shape it pulls back just enough to keep the whole fort in view).
  - Purana Qila surroundings expanded (island now x -1150..1150, z -1800..1150 m) using OpenStreetMap data
    (© OpenStreetMap contributors, ODbL — credit shown on the map): roads, railway, Pragati Maidan / Bharat Mandapam,
    National Stadium, Sundar Nagar, the zoo, parks, ponds and building footprints, with trees filling the green areas.
    The data is embedded in `<script id="osm-pq">`; the builder is `buildSurroundingsPQ()`.
  - All map icons are round (both venues, also on the street map); numbers still show where stops are numbered.
  - Purana Qila's Bara Darwaza rebuilt after the reference photo (`gateBaraPQ()`): red-sandstone iwan gateway, marble
    border and star medallions, jharokhas, crenellations, and two round rubble-stone bastions with string courses and slits.
  - Trees inside both forts (`interiorTrees()`): a belt along the inner walls, groves in the lawns, and the trees mapped in
    OpenStreetMap — kept off paths, buildings, gates and exhibit spots.
  - Landing screen for Purana Qila: the Bara Darwaza photo (embedded) with "Enter the map"; entering flies the camera from
    the gate to the overview. Skipped in kiosk mode, or add `?nolanding` to the URL. Code: `showLanding()` / `hideLanding()`.
  - Passcode on the landing screen (both venues), asked on every visit. Only a salted SHA-256 hash is stored
    (`PASS_SALT` / `PASS_HASH`); to change the code, replace PASS_HASH with sha256('bfm-v2|' + newCode).
    Client-side only: a soft gate for visitors, not real access control. Kiosk-mode devices skip it.
  - Background around the map is now mud colour #E6D0AE (dark theme #5C4A33) instead of violet.
  - Purana Qila re-laid on OpenStreetMap: real wall line, gate positions and angles, the lake, and the walkways inside
    (the Talaqi–Humayun diagonal, the road from Bara Darwaza, the loops round the mosque and Sher Mandal). Routes,
    hotspots and the 360° view follow these. Baoli moved to its mapped position (it was ~150 m east); Sher Mandal adjusted.
  - Purana Qila ground: bare-earth patches round the mosque and the central crossing, a mown lawn round Sher Mandal,
    denser tree cover in the north-west, along the west wall and in the south-west.
  - Red Fort: OpenStreetMap surroundings (roads, railway, Yamuna, Salimgarh, Chandni Chowk, Daryaganj, Raj Ghat, buildings)
    mapped onto the model with a best-fit warp through 13 landmarks (`rfWarp`); cars follow the real roads.
  - Street map: draws a simplified map from the embedded OpenStreetMap data when tiles can't load (e.g. inside the
    artifact viewer). Red Fort pins are placed through the inverse warp (`rfUnwarp`).
  - Sandstone tones per venue sampled from photos (Purana Qila softer salmon red, Red Fort muted brick red).
  - Opening view refitted to the reference screenshot after the re-layout (home pos [-346.4,203.2,454.8], target [24.7,0,29.7]).
  - 360° view: the place card and "Find a path" moved to the left and fold to one line; tap the place name for details.

## GitHub

Repository: https://github.com/subene-k/biennale-3d-map

1. Create the repository on github.com as **empty** (no README, no licence) under subene-k.
2. In this folder, double-click `push-to-github.bat` (needs Git for Windows; sign in to GitHub when asked).
3. Optional, to host it: repository Settings → Pages → Deploy from branch `main`, folder `/ (root)`.
   The map is then at https://subene-k.github.io/biennale-3d-map/ (`#purana-qila` or `#red-fort`).
   Outside the Claude viewer the normal OpenStreetMap street tiles load too.

Nothing secret is in the repository: the passcode is stored only as a salted SHA-256 hash.

## Latest changes
  - Purana Qila is the first venue (and the default); Red Fort second.
  - Passcode is remembered on the device for the rest of the day; switching venue doesn't ask again.
  - Red Fort welcome screen: a live 3D view of Lahori Gate behind the title (no photo licence needed).
  - Voice read-outs switched off (`VOICE_OFF` in the code); the sound buttons are hidden.
  - "Hide list" toggle removed from the panel; tabs sit directly under the venue switch.
  - Purana Qila's tricolour mast made full size and visible.
  - Leaving the 360° view no longer leaves a place label showing.
  - Press V on the 3D map to copy the current camera as an opening view.
  - Red Fort welcome photo: "Lahori Gate with Ramparts – Red Fort – Delhi" by Biswarup Ganguly, CC BY 3.0,
    via Wikimedia Commons (credited on the page). Purana Qila photo supplied by the team (check its licence).
  - "Hide list" row kept in the panel.
