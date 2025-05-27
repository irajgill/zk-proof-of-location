# zk-proof-of-location

**Zero-Knowledge Proof of Location:**  
Prove you are within a defined geographic area without revealing your exact coordinates, using zk-SNARKs and Circom.

---

## 🚀 Overview

This project demonstrates how to use zero-knowledge proofs to privately prove your location is within a specified bounding box (geofence).  
It uses [Circom](https://docs.circom.io/) for the circuit and [snarkjs](https://github.com/iden3/snarkjs) for proof generation and verification.

---

## 🗺️ Use Case

- **Location-based access control**
- **Privacy-preserving check-ins**
- **Private geo-fencing for apps and services**

---



Install with:

npm install -g circom snarkjs


---

## ⚡ Quick Start

### 1. **Download Trusted Setup File**

wget https://hermez.s3-eu-west-1.amazonaws.com/powersOfTau28_hez_final_12.ptau -O pot12_final.ptau

### 2. **Compile the Circuit**

npm run compile

### 3. **Run Trusted Setup**

npm run setup

text

### 4. **Set Your Location and Area**

Edit `input/input.json`:
{
"lat": 29863,
"lon": 77899,
"lat_min": 29850,
"lat_max": 29870,
"lon_min": 77890,
"lon_max": 77910
}

> *Note: Use integers (e.g., 29.863° → 29863).*

### 5. **Generate a Proof**

npm run prove


### 6. **Verify the Proof**

npm run verify

text

---

## 🧩 How It Works

- The circuit proves your latitude and longitude are within a public bounding box.
- Your exact coordinates remain secret; only the proof and area are revealed.

---

## 📂 Scripts

- `compile.sh` – Compiles the circuit.
- `setup.sh` – Runs trusted setup.
- `prove.sh` – Generates the witness and proof.
- `verify.sh` – Verifies the proof.

You can run these scripts individually or via npm (see `package.json`).

---

## 📝 Example Input

{
"lat": 29863,
"lon": 77899,
"lat_min": 29850,
"lat_max": 29870,
"lon_min": 77890,
"lon_max": 77910
}
