-module(recursive).
-export([fac/1, len/1, tail_len/1, tail_fac/1]).

fac(N) when N == 0 ->
  1;
fac(N) when N > 0 ->
  N * fac(N-1).

len([]) ->
  0;
len([_|T]) ->
  1 + len(T).

tail_len(List) ->
  tail_len(List, 0).

tail_len([],Acc) ->
  Acc;
tail_len([_|Tail], Acc) ->
  tail_len(Tail, Acc + 1).

tail_fac(Number) ->
  tail_fac(Number,1).

tail_fac(0,Acc) ->
  Acc;
tail_fac(N,Acc) when N > 0 ->
  tail_fac(N-1,N*Acc).

