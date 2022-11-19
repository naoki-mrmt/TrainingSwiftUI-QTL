if which swiftlint >/dev/null; then
  swiftlint --fix
  swiftlint
else
  echo "warning: Swiftlint not installed, download from https://github.com/realm/SwiftLint"
fi
