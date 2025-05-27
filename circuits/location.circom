pragma circom 2.1.4;

template RangeProof() {
    signal input value;
    signal input min;
    signal input max;

    signal diff_min;
    diff_min <== value - min;
    diff_min >= 0;

    signal diff_max;
    diff_max <== max - value;
    diff_max >= 0;
}

template LocationProof() {
    signal input lat;
    signal input lon;
    signal input lat_min;
    signal input lat_max;
    signal input lon_min;
    signal input lon_max;

    component lat_range = RangeProof();
    lat_range.value <== lat;
    lat_range.min <== lat_min;
    lat_range.max <== lat_max;

    component lon_range = RangeProof();
    lon_range.value <== lon;
    lon_range.min <== lon_min;
    lon_range.max <== lon_max;
}

component main = LocationProof();
