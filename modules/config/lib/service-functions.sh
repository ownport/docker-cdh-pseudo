#!/usr/bin/env bash

#
#	check java processes: started or not
#
check_java_process() {

    local _SERVICENAME=${1}

    pgrep -f "java -Dproc_${_SERVICENAME}" 2>&1 > /dev/null && {
        echo "- The service ${_SERVICENAME} was started successfully"
    } || {
        echo "Error! The service ${_SERVICENAME} was not started"
        exit 1
    }
}

#
#	export command scripts to specific directory
#
export_to() {

    local _TARGET_DIR=${1}

    [ -z ${RERUN_COMMAND_DIR} ] && {
        echo "Error! Export can be done only in rerun environment"
        exit 1
    }

    echo "- Exporting '${RERUN_COMMAND_DIR}' to '${_TARGET_DIR}'"
    [ ! -d "${_TARGET_DIR}" ] && {
        mkdir -p "${_TARGET_DIR}"
    }
    cp "${RERUN_COMMAND_DIR%%/}"/* "${_TARGET_DIR%%/}/" 

    echo "- Export completed"
}


#
#   check command options
#

handle_command_options() {

    [ "$#" -eq 0 ] && {
        usage
    }

    # Get the options
    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            # options without arguments
            # options with arguments   
            --run)
                config
                exit 0
                ;;
            --export-to)
                export_to "$2"
                exit 0
                ;;
            *)
                break
                ;;   
        esac
        shift
    done    
}