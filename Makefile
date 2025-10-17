all: wasm/re2.js

wasm/re2.js: wrap/re2_wrap.cc deps/re2/re2/bitstate.cc deps/re2/re2/compile.cc deps/re2/re2/dfa.cc deps/re2/re2/filtered_re2.cc deps/re2/re2/mimics_pcre.cc deps/re2/re2/nfa.cc deps/re2/re2/onepass.[...]
	mkdir -p wasm
	emcc --bind -s WASM=1 -s ALLOW_MEMORY_GROWTH=1 -s WASM_ASYNC_COMPILATION=0 -s NODEJS_CATCH_EXIT=0 -s NODEJS_CATCH_REJECTION=0 -I deps/re2 -o wasm/re2.js wrap/re2_wrap.cc deps/re2/re2/bitstate.cc deps/re2/re2/compile.cc deps/[...]
