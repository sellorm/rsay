# rsay

rsay makes R and your Mac speak!

It's a simple R wrapper around the MacOS command line utility, `say`.

**Note:** MacOS only, sorry!

## Installation

``` r
devtools::install_github("sellorm/rsay")
```

## Examples

It's really easy to get R to make your Mac speak

``` r
library(rsay)
speak("Good day to you")
```

Maybe your Mac should let you know when that long R task has finished?

``` r
#
# Really long running R job
# ...
# ...
# Finished
speak("Wow, that took a long time!")
```

say also has different built in voices that you can play with, for example:

``` r
speak("Wasn't Stranger Things good", voice = "Diego")
```

The complete list of voices is provided as a dataset called, `available_voices`.
