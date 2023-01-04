PRODUCT_NAME := Task5
WORKSPACE_NAME := ${PRODUCT_NAME}.xcworkspace

.PHONY:
generate:
	bundle exec pod install
	open ./${WORKSPACE_NAME}

.PHONY: Xcode-build
Xcode-build: ## Xcode build command for CI
	set -o pipefail && xcodebuild -sdk iphonesimulator -configuration Debug -workspace VolleyballScoreApp.xcworkspace -scheme VolleyballScoreApp build | bundle exec xcpretty
