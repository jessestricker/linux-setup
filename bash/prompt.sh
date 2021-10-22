#!/bin/bash

__prompt_status() {
	local exit_code=$?
	if [[ ${exit_code} -ne 0 ]]; then
		echo "${exit_code} "
	fi
}

PS1=""                                    # clear prompt
PS1+="\[\e[22;1;31m\]\$(__prompt_status)" # exit code
PS1+="\[\e[22;1;32m\]\u"                  # user name
PS1+="\[\e[22;1;37m\]@"                   # @
PS1+="\[\e[22;1;36m\]\H"                  # host name
PS1+="\[\e[22;1;37m\]:"                   # :
PS1+="\[\e[22;1;2;37m\]\w"                # current dir
PS1+="\[\e[22;1;37m\]\\\$"                # $
PS1+="\[\e[0m\] "                         # reset style
