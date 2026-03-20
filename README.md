# Private Blockchain HR System

## Opis
Ovaj projekat predstavlja implementaciju jednostavnog privatnog blockchain sistema za evidenciju zaposlenih, zasnovanog na hash vrednostima biometrijskih podataka.

## Funkcionalnosti
- upis hash vrednosti u blockchain
- pametni ugovor za evidenciju zaposlenih
- verifikacija podataka

## Tehnologije
- Solidity
- Hardhat
- Node.js

## Pokretanje projekta

```bash
npm install
npx hardhat compile
npx hardhat node
npx hardhat run scripts/deploy.js --network localhost
