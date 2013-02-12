
# Default target
all: minify

# Create minified CSS from Sass
minify: compile
	@echo "Minifying CSS...";
	@echo "`sass ./lib/pigeon.scss --style compressed`" \
		> "./build/pigeon.min.css";
	@echo "  > Done"

# Create CSS from Sass
compile: prepare
	@echo "Compiling Sass to CSS...";
	@echo "`sass ./lib/pigeon.scss --style expanded`" \
		> "./build/pigeon.css";
	@echo "  > Done"

# Prepare the build directory structure
prepare:
	@mkdir -p ./build

# Clean up (remove the build directory structure)
clean:
	@rm -rf ./build
