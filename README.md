# Stack Counter

A minimal on-chain counter built on the Stacks blockchain (Clarity 4).

Each call to `bump` increments the caller's personal count and the global total.

## Contract

- **Address:** `SP16F6839630K5XX06KE7KVNSNMYBK89912NH6N4C.stack-counter`
- **Network:** Stacks Mainnet
- **Clarity Version:** 4
- **Explorer:** [view on Hiro Explorer](https://explorer.hiro.so/SP16F6839630K5XX06KE7KVNSNMYBK89912NH6N4C.stack-counter?chain=mainnet)

## Functions

- `(bump)` — increment the global total and your personal count. Returns the new total.
- `(get-total)` — read-only, returns current global total.
- `(get-user-count principal)` — read-only, returns count for a given address.

## Frontend

Static HTML page in `frontend/`. No build step — just open `index.html` or deploy the folder as-is to any static host.

Uses [@stacks/connect](https://github.com/hirosystems/connect) for wallet connection and contract calls.

## License

MIT

---

_Last updated: 2026-05-12_
