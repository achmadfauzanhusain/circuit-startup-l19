pragma circom 2.0.0;

include "../node_modules/circomlib/circuits/poseidon.circom";

template AddressZKP() {
    signal input address;
    signal input salt;
    signal input hash;

    component hashCheck = Poseidon(2);
    hashCheck.inputs[0] <== address;
    hashCheck.inputs[1] <== salt;
    hash === hashCheck.out;
}

component main { public[hash] } = AddressZKP();