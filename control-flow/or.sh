#!/usr/bin/env bash

false || echo "Print this instead"

echo "This will always print" || echo "This never will"

true || echo "This will also never print"