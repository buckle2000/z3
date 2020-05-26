import z3;

import std.stdio;

void main() {
    uint major, minor, build, revision;
    Z3_get_version(&major, &minor, &build, &revision);
    writefln("Z3 %d.%d.%d.%d", major, minor, build, revision);
}
