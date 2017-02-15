-module(useless).
-export([start/0, add/2, hello/0, greet_and_add_two/1, greet/2, get_person/0]).

start() ->
  Numbers = lists:seq(1,10),
  io:format("modified list = ~w~n", [boggle:filter(fun(X) -> X rem 2 == 0 end, Numbers)]).

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

get_person() ->
  {person, {name, <<"Fred T-H">>},
    {qualities, ["handsome", "smart", "honest", "objective"]},
    {faults, ["liar"]},
    {skills, ["programming", "bass guitar", "underwater breakdancing"]}}.