-module(boggle).
-export([filter/2]).

filter(Pred, L) ->
  lists:reverse(filter(Pred, L,[])).

filter(_, [], Acc) ->
  Acc;
filter(Func, [H|T], Acc) ->
  case Func(H) of
    true  ->
      filter(Func, T, [H|Acc]);
    false ->
      filter(Func, T, Acc)
  end.