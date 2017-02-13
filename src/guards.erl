-module(guards).
-export([old_enough/1]).

old_enough(X) when X >= 18 ->
  true;
old_enough(_) ->
  false.