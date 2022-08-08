#!/bin/bash

dart test --coverage=coverage --test-randomize-ordering-seed random && dart pub global run coverage:format_coverage --lcov --check-ignore --in=coverage --out=coverage/lcov.info --report-on=lib && genhtml coverage/lcov.info -o coverage/ && dart pub global run flutter_coverage_badge