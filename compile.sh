#!/bin/bash
cd circuits
circom location.circom --r1cs --wasm --sym -o ../build
