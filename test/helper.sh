#!/bin/sh

[[ -n "$ZSH_VERSION" ]] && setopt shwordsplit

source ./share/chruby/chruby.sh
export PATH="$PWD/bin:$PATH"

chruby_reset

TEST_PATH="$PATH"
TEST_RUBY_ENGINE="ruby"
TEST_RUBY_VERSION="1.9.3"
TEST_RUBY_PATCHLEVEL="327"
TEST_RUBY_API="1.9.1"
TEST_RUBY="/usr/local/ruby-$TEST_RUBY_VERSION-p$TEST_RUBY_PATCHLEVEL"

export RUBIES=($TEST_RUBY)

setUp() { return; }
tearDown() { return; }
oneTimeTearDown() { return; }
