-module(guards).
-export([old_enough/1, wtf/0]).

old_enough(X) when X >= 18 ->
  true;
old_enough(_) ->
  false.

wtf() ->
  io:format("is 5 old enough: ~s~n", [old_enough(5)]),
  io:format("is 18 old enough: ~s~n", [old_enough(18)]),
  io:format("Is it?: ~s~n", [is_integer(12)]).