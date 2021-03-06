// RUN: %boogie "%s" > "%t"
// RUN: %diff "%s".expect "%t"

procedure main() returns () {
    var in1: int;
    var in2: int;
    var max: int;

    havoc in1;
    havoc in2;

    if (in1 > in2) {
        max := in1;
    } else {
        max := in2;
    }

    assert  max >= in1;
    assert  max >= in2;
}
