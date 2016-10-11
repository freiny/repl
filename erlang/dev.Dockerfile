FROM alpine:3.4

RUN apk update && \
apk add inotify-tools && \
apk add ncurses-libs erlang-xmerl erlang-dialyzer erlang-cosproperty erlang-parsetools erlang-costime erlang-test-server erlang-percept erlang-sasl erlang-stdlib erlang-runtime-tools erlang-ssh erlang-erl-docgen erlang-eunit erlang erlang-inets erlang-orber erlang-cosfiletransfer erlang-tools erlang-snmp erlang-et erlang-ic erlang-dev erlang-debugger erlang-jinterface erlang-typer erlang-asn1 erlang-erl-interface erlang-hipe erlang-cosnotification erlang-odbc erlang-ose erlang-otp-mibs erlang-reltool erlang-crypto erlang-common-test erlang-ssl erlang-mnesia erlang-cosevent erlang-compiler erlang-os-mon erlang-erts erlang-costransaction erlang-public-key erlang-syntax-tools erlang-gs erlang-observer erlang-edoc erlang-kernel erlang-webtool erlang-eldap erlang-coseventdomain erlang-megaco erlang-diameter

CMD ["sh", "-c", "source /src/initHome"]
