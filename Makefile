
# Default target
all: minify-sass

# Create minified CSS from Sass
minify-sass: compile-sass
	@echo "Minifying CSS...";
	@sass ./style/_source/site.scss --style compressed > "./style/site.min.css";
	@echo "  > Done"

# Create CSS from Sass
compile-sass:
	@echo "Compiling Sass to CSS...";
	@sass ./style/_source/site.scss --style expanded > "./style/site.css";
	@echo "  > Done"

# Build the site
build:
	@echo "Building site...";
	@jekyll;
	@echo "  > Done"
