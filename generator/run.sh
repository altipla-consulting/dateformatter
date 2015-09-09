#!/bin/bash

set -eu

go install github.com/altipla-consulting/i18n-dateformatter/generator
wget http://www.unicode.org/Public/cldr/27.0.1/core.zip -O /tmp/core.zip

generator -locales en,es,fr,ru
