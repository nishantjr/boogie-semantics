// RUN: %boogie "%s" > "%t"
// RUN: %diff "%s".expect "%t"

procedure main() returns () {
    var a: int;
    var b: int; 

    a:= 5;
    b:= 6; 
    assert  a + b == 11;
}
