%% @copyright (C) {{yearno}} {{author}} All Rights Reserved.
%%
%% @doc `{{appid}}'のアプリケーションモジュール
%% @private
-module({{appid}}_app).

-behaviour(application).

%%----------------------------------------------------------------------------------------------------------------------
%% 'application' Callback API
%%----------------------------------------------------------------------------------------------------------------------
-export([start/2, stop/1]).

%%----------------------------------------------------------------------------------------------------------------------
%% 'application' Callback Functions
%%----------------------------------------------------------------------------------------------------------------------
%% @private
start(_StartType, _StartArgs) ->
    {{appid}}_sup:start_link().

%% @private
stop(_State) ->
    ok.
