.PHONY: run-tests
run-tests:
	@go test -v -race -cover -tags dynamic `go list ./... | grep -v vendor/`