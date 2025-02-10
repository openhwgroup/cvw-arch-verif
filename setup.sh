#!/bin/bash
CVW_ARCH_VERIF=$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)
export CVW_ARCH_VERIF

echo "\$CVW_ARCH_VERIF set to $CVW_ARCH_VERIF"
