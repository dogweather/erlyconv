%% THIS FILE WAS AUTOMATICALLY GENERATED BY gen_src.pl
%% FROM mappings/ISO8859/8859-15.TXT AT 2016-08-19
-module(iso8859_15).
-vsn(20160819).
-export([to_unicode/1, from_unicode/1]).

%% Public functions
to_unicode(16#A4) -> 16#20AC;
to_unicode(16#A6) -> 16#0160;
to_unicode(16#A8) -> 16#0161;
to_unicode(16#B4) -> 16#017D;
to_unicode(16#B8) -> 16#017E;
to_unicode(16#BC) -> 16#0152;
to_unicode(16#BD) -> 16#0153;
to_unicode(16#BE) -> 16#0178;
to_unicode(List) when is_list(List) -> [to_unicode(C) || C <- List];
to_unicode(Bin) when is_binary(Bin) -> bin_to_unicode(Bin, <<>>);
to_unicode(Other) -> Other.

from_unicode(16#20AC) -> 16#A4;
from_unicode(16#0160) -> 16#A6;
from_unicode(16#0161) -> 16#A8;
from_unicode(16#017D) -> 16#B4;
from_unicode(16#017E) -> 16#B8;
from_unicode(16#0152) -> 16#BC;
from_unicode(16#0153) -> 16#BD;
from_unicode(16#0178) -> 16#BE;
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
