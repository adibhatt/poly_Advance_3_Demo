pragma circom 2.0.0;


template CustomCircuit () {

    
    signal input a;
    signal input b;

    
    signal x;
    signal y;

     
    signal output q;

    component LogicalAND = AND();
    component LogicalNOT = NOT();
    component LogicalOR = OR();

    
    LogicalAND.a <== a;
    LogicalAND.b <== b;
    x <== LogicalAND.out;

          
    LogicalNOT.in <== b;
    y <== LogicalNOT.out;

        
    LogicalOR.a <== x;
    LogicalOR.b <== y;

    q <== LogicalOR.out;

}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

component main = CustomCircuit();