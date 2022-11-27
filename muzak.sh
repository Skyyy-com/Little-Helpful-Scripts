#!/bin/bash

find ~/Music -type f | dmenu -nf violet -nb black -sb violet -sf pink -l 20 | xargs -I {} mpv {}
