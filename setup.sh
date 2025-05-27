#!/bin/bash
cd build
snarkjs groth16 setup location.r1cs ../pot12_final.ptau location_0000.zkey
snarkjs zkey contribute location_0000.zkey location_final.zkey --name="First contribution"
snarkjs zkey export verificationkey location_final.zkey verification_key.json
