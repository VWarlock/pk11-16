#!/usr/bin/perl -CS

# https://ru.wikipedia.org/wiki/Основная_кодировка
foreach $c (0..127) { push @X, pack("c", $c) };
map { push @X, pack("U", $_) } (
               0x2567, 0x2568, 0x2564, 0x2561, 0x2562, 0x2556, 0x2555, 0x2565,
               0x2559, 0x2558, 0x2552, 0x255C, 0x255B, 0x255E, 0x255F, 0x2553,
               0x2554, 0x2557, 0x255D, 0x255A, 0x2550, 0x2551, 0x2566, 0x2563,
               0x2569, 0x2560, 0x256C, 0x2591, 0x2592, 0x2593, 0x256B, 0x256A,
               0x250C, 0x2510, 0x2518, 0x2514, 0x2500, 0x2502, 0x252C, 0x2524,
               0x2534, 0x251C, 0x253C, 0x2588, 0x2584, 0x258C, 0x2590, 0x2580,
                0x410,  0x411,  0x412,  0x413,  0x414,  0x415,  0x416,  0x417,
                0x418,  0x419,  0x41A,  0x41B,  0x41C,  0x41D,  0x41E,  0x41F,
                0x420,  0x421,  0x422,  0x423,  0x424,  0x425,  0x426,  0x427,
                0x428,  0x429,  0x42A,  0x42B,  0x42C,  0x42D,  0x42E,  0x42F,
                0x430,  0x431,  0x432,  0x433,  0x434,  0x435,  0x436,  0x437,
                0x438,  0x439,  0x43A,  0x43B,  0x43C,  0x43D,  0x43E,  0x43F,
                0x440,  0x441,  0x442,  0x443,  0x444,  0x445,  0x446,  0x447,
                0x448,  0x449,  0x44A,  0x44B,  0x44C,  0x44D,  0x44E,  0x44F,
                0x401,  0x451, 0x256D, 0x256E, 0x256F, 0x2570, 0x2192, 0x2190,
               0x2193, 0x2191,   0xF7,   0xB1, 0x2116,   0xA4, 0x25A0,   0xA0 );

print "\N{BOM}";
foreach (<>)
{
    break if /^\x1A/;
    s/\r//;
    s/(.)/$X[ord $1]/ge;
    print $_;
}