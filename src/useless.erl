-module(useless).
-export([start/0, add/2, hello/0, greet_and_add_two/1, greet/2]).

start() ->
  io:format("is 5 old enough: ~s~n", [guards:old_enough(5)]),
  io:format("is 18 old enough: ~s~n", [guards:old_enough(18)]).

add(A, B) ->
  A + B.

hello() ->
  io:format("Hello World!").

greet_and_add_two(A) ->
  hello(),
  add(A,2).

greet(male, Name) ->
  io:format("Hello, Mr. ~s!~n", [Name]);
greet(female, Name) ->
  io:format("Hello, Mrs. ~s!~n", [Name]);
greet(_, Name) ->
  io:format("Hello, ~s!~n", [Name]).