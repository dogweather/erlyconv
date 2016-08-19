%% THIS FILE WAS AUTOMATICALLY GENERATED BY gen_src.pl
%% FROM mappings/ISO8859/8859-16.TXT AT 2016-08-19
-module(iso8859_16).
-vsn(20160819).
-export([to_unicode/1, from_unicode/1]).

%% Public functions
to_unicode(16#A1) -> 16#0104;
to_unicode(16#A2) -> 16#0105;
to_unicode(16#A3) -> 16#0141;
to_unicode(16#A4) -> 16#20AC;
to_unicode(16#A5) -> 16#201E;
to_unicode(16#A6) -> 16#0160;
to_unicode(16#A8) -> 16#0161;
to_unicode(16#AA) -> 16#0218;
to_unicode(16#AC) -> 16#0179;
to_unicode(16#AE) -> 16#017A;
to_unicode(16#AF) -> 16#017B;
to_unicode(16#B2) -> 16#010C;
to_unicode(16#B3) -> 16#0142;
to_unicode(16#B4) -> 16#017D;
to_unicode(16#B5) -> 16#201D;
to_unicode(16#B8) -> 16#017E;
to_unicode(16#B9) -> 16#010D;
to_unicode(16#BA) -> 16#0219;
to_unicode(16#BC) -> 16#0152;
to_unicode(16#BD) -> 16#0153;
to_unicode(16#BE) -> 16#0178;
to_unicode(16#BF) -> 16#017C;
to_unicode(16#C3) -> 16#0102;
to_unicode(16#C5) -> 16#0106;
to_unicode(16#D0) -> 16#0110;
to_unicode(16#D1) -> 16#0143;
to_unicode(16#D5) -> 16#0150;
to_unicode(16#D7) -> 16#015A;
to_unicode(16#D8) -> 16#0170;
to_unicode(16#DD) -> 16#0118;
to_unicode(16#DE) -> 16#021A;
to_unicode(16#E3) -> 16#0103;
to_unicode(16#E5) -> 16#0107;
to_unicode(16#F0) -> 16#0111;
to_unicode(16#F1) -> 16#0144;
to_unicode(16#F5) -> 16#0151;
to_unicode(16#F7) -> 16#015B;
to_unicode(16#F8) -> 16#0171;
to_unicode(16#FD) -> 16#0119;
to_unicode(16#FE) -> 16#021B;
to_unicode(List) when is_list(List) -> [to_unicode(C) || C <- List];
to_unicode(Bin) when is_binary(Bin) -> bin_to_unicode(Bin, <<>>);
to_unicode(Other) -> Other.

from_unicode(16#0104) -> 16#A1;
from_unicode(16#0105) -> 16#A2;
from_unicode(16#0141) -> 16#A3;
from_unicode(16#20AC) -> 16#A4;
from_unicode(16#201E) -> 16#A5;
from_unicode(16#0160) -> 16#A6;
from_unicode(16#0161) -> 16#A8;
from_unicode(16#0218) -> 16#AA;
from_unicode(16#0179) -> 16#AC;
from_unicode(16#017A) -> 16#AE;
from_unicode(16#017B) -> 16#AF;
from_unicode(16#010C) -> 16#B2;
from_unicode(16#0142) -> 16#B3;
from_unicode(16#017D) -> 16#B4;
from_unicode(16#201D) -> 16#B5;
from_unicode(16#017E) -> 16#B8;
from_unicode(16#010D) -> 16#B9;
from_unicode(16#0219) -> 16#BA;
from_unicode(16#0152) -> 16#BC;
from_unicode(16#0153) -> 16#BD;
from_unicode(16#0178) -> 16#BE;
from_unicode(16#017C) -> 16#BF;
from_unicode(16#0102) -> 16#C3;
from_unicode(16#0106) -> 16#C5;
from_unicode(16#0110) -> 16#D0;
from_unicode(16#0143) -> 16#D1;
from_unicode(16#0150) -> 16#D5;
from_unicode(16#015A) -> 16#D7;
from_unicode(16#0170) -> 16#D8;
from_unicode(16#0118) -> 16#DD;
from_unicode(16#021A) -> 16#DE;
from_unicode(16#0103) -> 16#E3;
from_unicode(16#0107) -> 16#E5;
from_unicode(16#0111) -> 16#F0;
from_unicode(16#0144) -> 16#F1;
from_unicode(16#0151) -> 16#F5;
from_unicode(16#015B) -> 16#F7;
from_unicode(16#0171) -> 16#F8;
from_unicode(16#0119) -> 16#FD;
from_unicode(16#021B) -> 16#FE;
from_unicode(List) when is_list(List) -> [from_unicode(C) || C <- List];
from_unicode(Bin) when is_binary(Bin) -> bin_from_unicode(Bin, <<>>);
from_unicode(Other) -> Other.

%% Private functions
bin_to_unicode(<<>>, Bin) -> Bin;
bin_to_unicode(<<C, Rest/binary>>, Acc) ->
    U = to_unicode(C),
    bin_to_unicode(Rest, <<Acc/binary, U/utf8>>).

bin_from_unicode(<<>>, Bin) -> Bin;
bin_from_unicode(<<U/utf8, Rest/binary>>, Acc) ->
    C = from_unicode(U),
    bin_from_unicode(Rest, <<Acc/binary, C>>).
