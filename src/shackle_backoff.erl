-module(shackle_backoff).
-include("shackle.hrl").

-export([
    timeout/1
]).

%% public
timeout(ConnectRetry) when ConnectRetry > 10 ->
    ?DEFAULT_CONNECT_RETRY * 10;
timeout(ConnectRetry) ->
    ?DEFAULT_CONNECT_RETRY * ConnectRetry.