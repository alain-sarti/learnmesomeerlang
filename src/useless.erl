-module(useless).
-export([add/2, hello/0, greet_and_add_two/1]).

add(A, B) ->
  A + B.

hello() ->
  io:format("Hello World!").

greet_and_add_two(A) ->
  hello(),
  add(A,2).