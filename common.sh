if ! command -v git &> /dev/null; then
    echo "The 'git' command is not found on this system."
    echo "Please install Git."
    exit 1
fi

if command -v open &> /dev/null; then
    OPEN_CMD=open
elif command -v xdg-open &> /dev/null; then
    OPEN_CMD=xdg-open
else
    echo "No supported open command (open, xdg-open) found on this system."
    exit 1
fi

# Use provided remote, or 'origin' if none
REMOTE="${1:-origin}"

git_open () {
    local GITHUB_POSTFIX=$1
    local GITLAB_POSTFIX=$2

    # Transform Git URL to browser base URL
    # Examples:
    #     git@gitlab.com:group/project.git => https://gitlab.com/group/project
    #     https://github.com:group/project.git => https://github.com/group/project
    local BASE_URL="https://$(git remote get-url "${REMOTE}" | sed 's|^git@||' | sed 's|^https://||' | sed 's|\.git$||' | sed 's|:|/|')"

    if [[ "${BASE_URL}" == "https://github.com/"* ]]; then
    	# Open GitHub URL
    	"${OPEN_CMD}" "${BASE_URL}${GITHUB_POSTFIX}"
    else
    	# Assume we're dealing with GitLab
    	"${OPEN_CMD}" "${BASE_URL}${GITLAB_POSTFIX}"
    fi
}
