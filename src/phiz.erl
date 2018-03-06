-module(phiz).
-author("kirill.sysoev@gmail.com").

-mod_title("OnNet Innovations").
-mod_description("OnNet Innovations Limited").
-mod_prio(7).

-export([event/2]).

-include_lib("zotonic_core/include/zotonic.hrl").

event(A, Context) ->
    lager:info("Unknown event A: ~p", [A]),
    lager:info("Unknown event variables: ~p", [z_context:get_q_all(Context)]),
    lager:info("Unknown event Context: ~p", [Context]),
    Context.
