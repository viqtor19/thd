#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

OPTIONS="-token -lemma -sgml"

BIN=$SCRIPT_DIR/../../../treetagger/bin
CMD=$SCRIPT_DIR/../../../treetagger/cmd
LIB=$SCRIPT_DIR/../../../treetagger/lib

TOKENIZER=${CMD}/utf8-tokenize.perl
TAGGER=${BIN}/tree-tagger
ABBR_LIST=${LIB}/polish-abbreviations-utf8
PARFILE=${LIB}/polish-utf8.par


$TOKENIZER -a $ABBR_LIST $* |
# tagging
$TAGGER $OPTIONS $PARFILE