#!/bin/bash
echo $(setxkbmap -query | grep -oP 'layout:\s*\K([\w,]+)')
