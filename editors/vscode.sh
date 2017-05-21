PACKAGES=(
    "lukehoban.Go"
    "donjayamanne.python"
    "PeterJausovec.vscode-docker"
    "robertohuertasm.vscode-icons"
    "rebornix.Ruby"
    "spywhere.guides"
    "wmaurer.vscode-jumpy"
)

for i in "${PACKAGES[@]}"
do
    code --install-extension "${i}"
done
