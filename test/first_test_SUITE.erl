-module(first_test_SUITE).

%% Common Test exports
-export([all/0]).

%% test case exports
-export([open_makefile/1]).

all() ->
    [open_makefile].

open_makefile(_) ->
    File = support_library:get_file("Makefile"),
    io:format("Read makefile contents:~n~p~n", [File]),
    ok.
