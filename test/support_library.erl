-module(support_library).

-include("shared_ct_files.hrl").

-export ([get_file/1, ls/0]).

ls() ->
    {ok, Filenames} = file:list_dir(?SHARED_FILE_DIR),
    Filenames.

get_file(FileName) ->
    {ok, Data} = file:read_file(?SHARED_FILE_DIR ++ "/" ++ FileName),
    binary:split(Data, [<<"\n">>], [global]).
