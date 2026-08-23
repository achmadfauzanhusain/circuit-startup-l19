pragma circom 2.0.0;

include "../node_modules/circomlib/circuits/poseidon.circom";

template AddressZKP() {
    signal input address;
    signal input hash;

    component hashCheck = Poseidon(1);
    hashCheck.inputs[0] <== address;
    hash === hashCheck.out;
}

component main { public[hash] } = AddressZKP();