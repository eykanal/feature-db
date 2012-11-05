#!/bin/sh

vendor/bin/doctrine orm:schema-tool:create
vendor/bin/doctrine orm:validate-schema
