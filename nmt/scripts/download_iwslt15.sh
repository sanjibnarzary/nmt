#!/bin/sh
# Download small-scale IWSLT15 Vietnames to English translation data for NMT
# model training.
#
# Usage:
#   ./download_iwslt15.sh path-to-output-dir
#
# If output directory is not specified, "./iwslt15" will be used as the default
# output directory.
OUT_DIR="${1:-enbrxmed18}"
SITE_PREFIX="https://cit.ac.in/~sn/data/ebnmt"

mkdir -v -p $OUT_DIR

# Download iwslt15 small dataset from standford website.
echo "Download training dataset train.en and train.brx."
curl -o "$OUT_DIR/train.en" "$SITE_PREFIX/training.en"
curl -o "$OUT_DIR/train.brx" "$SITE_PREFIX/training.brx"

echo "Download dev dataset test.en and test.brx."
curl -o "$OUT_DIR/tst2012.en" "$SITE_PREFIX/test.en"
curl -o "$OUT_DIR/tst2012.brx" "$SITE_PREFIX/test.brx"

echo "Download test dataset tst2013.en and tst2013.brx."
curl -o "$OUT_DIR/tst2013.en" "$SITE_PREFIX/dev.en"
curl -o "$OUT_DIR/tst2013.brx" "$SITE_PREFIX/dev.brx"

echo "Download vocab file vocab.en and vocab.brx."
curl -o "$OUT_DIR/vocab.en" "$SITE_PREFIX/vocab.50k.en"
curl -o "$OUT_DIR/vocab.brx" "$SITE_PREFIX/vocab.50k.brx"
