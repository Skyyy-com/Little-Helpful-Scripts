#!/bin/bash

CHOICES=("EMAIL" "USER" "ASCII")

EMAILS=("xxx" "yyy" "zzz")
USERS=("Skyyy-com" "xxx")
ASCII=("®" "±" "µ" "©" "§" "™" "†" "›" "—" "✓" "Â" "Ã" "Î" "â" "î" "¿" "ă" "ș" "ț" "↔" "↮" "Δ")

CHOICE=$(printf '%s\n' "${CHOICES[@]}" | dmenu -i -nf violet -nb black -sb violet -sf black -l 5)

[ $CHOICE = "EMAIL" ] && printf '%s\n' "${EMAILS[@]}" | dmenu -i -nf violet -nb black -sb violet -sf black -l 5 | xclip -sel clip
[ $CHOICE = "USER" ] && printf '%s\n' "${USERS[@]}" | dmenu -i -nf violet -nb black -sb violet -sf black -l 5 | xclip -sel clip
[ $CHOICE = "ASCII" ] && printf '%s\n' "${ASCII[@]}" | dmenu -i -nf violet -nb black -sb violet -sf black -l 5 | xclip -sel clip
