#!/bin/bash
CVW_ARCH_VERIF=$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)
export CVW_ARCH_VERIF

echo "\$CVW_ARCH_VERIF set to $CVW_ARCH_VERIF"

if [ ! -e "${CVW_ARCH_VERIF}/.git/hooks/pre-commit" ] && [ ! -e "${WALLY}/.git/modules/addins/cvw-arch-verif/hooks/pre-commit" ]; then
    pushd "${CVW_ARCH_VERIF}" || exit 1
    echo "Installing pre-commit hooks"
    pre-commit install || echo "pre-commit install failed"
    popd || exit
fi
