
Pigeon
======

Pigeon is an OOCSS framework for rapid prototyping and building smart, scalable websites.

**Current Version:** *1.2.3*  
**Browser Support:** *Android Browser 2.2–4.2, Firefox 3.6, Firefox 4–16, Google Chrome 14–23, Internet Explorer 7–10, Mobile Safari iOS 4–6, Opera 12.10, Safari 5–6*

![Pigeon][logo]


Usage
-----

Pigeon is easy to use and highly configurable, you can use it with either plain CSS or Sass. The [Pigeon website][pigeon] has the full documentation.

* [Installing and using Pigeon][pigeon-install]
* [Configuring Pigeon, and customising to suit your needs][pigeon-config]
* [Full API documentation on all of Pigeon's OOCSS objects][pigeon-objects]


Development
-----------

In order to build CSS from the Pigeon source files, you'll need to install the [Sass command line utility][sass]. If you're on Windows, you'll also need to install [Make for Windows][make].

Once you're set up, you can run the following commands:

```sh
$ make compile # compile Sass source to CSS
$ make minify # compile Sass source to CSS and minify
```

When no build target is specified, make will run minify and compile. This means you can use the following command for brevity:

```sh
$ make
```

Work on files in the `lib` directory; files in `build` are generated by the build tools. Please run `make` and commit generated files before opening a pull request.


License
-------

Copyright 2013, Rowan Manning  
Licensed under the [MIT][mit] license.



[logo]: http://pigeoncss.com/media/logo.png
[make]: http://gnuwin32.sourceforge.net/packages/make.htm
[mit]: http://opensource.org/licenses/mit-license.php
[pigeon]: http://pigeoncss.com/
[pigeon-install]: http://pigeoncss.com/docs/install/
[pigeon-config]: http://pigeoncss.com/docs/config/
[pigeon-objects]: http://pigeoncss.com/docs/objects/
[sass]: http://sass-lang.com/download.html
