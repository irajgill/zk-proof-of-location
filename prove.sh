#!/bin/bash
cd build
node location_js/generate_witness.js location.wasm ../input/input.json witness.wtns
snarkjs groth16 prove location_final.zkey witness.wtns proof.json public.json
