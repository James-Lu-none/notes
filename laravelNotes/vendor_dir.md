# Should I add Laravel vendor directory to .gitignore or not?

Composer provides the composer.lock file for this purpose.

Installing a new package, doing a composer update, etc. that causes package changes will write the exact versions of the installed packages to composer.lock. You should include this file in your repository's versioned files.

You can run composer install to automatically install the exact list of package versions from composer.lock. As it's going to be versioned, you can always roll it back to a working version and run composer install again.

Side note: composer dump-autoload shouldn't make any destructive changes in vendor.

[src](https://stackoverflow.com/questions/39192071/should-i-add-laravel-vendor-directory-to-gitignore-or-not)