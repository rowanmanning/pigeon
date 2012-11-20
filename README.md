
Pigeon
======

Pigeon is an OOCSS framework for rapid prototyping or building simple, minimalist websites. Not all pigeons are scruffy...


Usage
-----

To use Pigeon, simply include `dist/pigeon.css` or `dist/pigeon.min.css` in your project.

You can view/use the source for individual objects by digging into the CSS files in the `lib` directory, or you can import `lib/pigeon.scss` directly.

Pigeon doesn't standardise default styles across browser, I'd recommend using [normalize.css][normalize] for this (or a CSS reset if you have to).

Pigeon is available through [Bower][bower]: `bower install pigeon`.


Browser Support
---------------

Pigeon supports all modern versions of Firefox, Chrome, Safari and Internet Explorer (8+). Internet Explorer 6–7 are supported unless stated otherwise in the code comments.


Development
-----------

In order to develop Pigeon, you'll need to [install Sass][sass-install] `3.2.x`.

Once you have Sass set up, you will be able to run the following commands from within the repo:

`make compile`: Compile the Sass source files into CSS.

`make minify`: Compile the Sass source files into minified CSS.

Work on files in the `lib` directory, files in `dist` are generated by the build tools. Please run `make minify` on your code before pull-requesting.


License
-------

Dual licensed under the [MIT][mit] or [GPL Version 2][gpl] licenses.



[bower]: http://twitter.github.com/bower/
[gpl]: http://opensource.org/licenses/gpl-2.0.php
[mit]: http://opensource.org/licenses/mit-license.php
[normalize]: http://necolas.github.com/normalize.css/
[sass-install]: http://sass-lang.com/download.html
