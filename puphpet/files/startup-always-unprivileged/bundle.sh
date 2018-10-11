#!/bin/bash

if [[ -f ${PUPHPET_CORE_DIR}/shell/ascii-art/project_setup.txt ]]; then
    cat ${PUPHPET_CORE_DIR}/shell/ascii-art/project_setup.txt
    printf "\n"
    echo ""
fi

if [[ -f ${PUPHPET_CORE_DIR}/shell/ascii-art/bundle.txt ]]; then
    cat ${PUPHPET_CORE_DIR}/shell/ascii-art/bundle.txt
    printf "\n"
    echo ""
fi

echo ${PUPHPET_CORE_DIR}
echo PUPHPET_CORE_DIR
echo "fufufufufufufufufufufufufufufufufu"

cd /var/oopla
bundle install
rails s
