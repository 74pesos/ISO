#!/bin/bash
ls | tr -d [a,A] | tr '[:upper:] [:lower:]' '[:lower:] [:upper:]'
