# Use provided remote, or 'origin' if none
REMOTE="${1:-origin}"

git_open () {
    local GITHUB_POSTFIX=$1
    local GITLAB_POSTFIX=$2

    # Transforms Git URL to base URL
    # Examples:
    #     git@gitlab.com:group/project.git => https://gitlab.com/group/project
    #     https://github.com:group/project.git => https://github.com/group/project
    local BASE_URL=`git remote get-url "${REMOTE}" | sed 's|\.git$||' | sed -E 's;^(git@|https://);;' | sed 's|:|/|'`

    if [[ $BASE_URL == *"github.com"* ]]; then
    	# Open GitHub URL
    	open "https://${BASE_URL}${GITHUB_POSTFIX}"
    else
    	# Assume we're dealing with GitLab
    	open "https://${BASE_URL}${GITLAB_POSTFIX}"
    fi
}
