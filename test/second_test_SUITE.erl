-module(second_test_SUITE).

%% Common Test exports
-export([all/0]).

%% test case exports
-export([open_passwords_file/1, count_shared_files/1]).

all() ->
    [open_passwords_file].

open_passwords_file(_) ->
    _ = support_library:get_file("passwords.txt"),
    ok.

count_shared_files(_) ->
    2 =:= length(support_library:ls()),
    ok.
