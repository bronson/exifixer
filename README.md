## Exifixer

If your filesystem has screwed up the creation/modification times of
your JPEGs, and Lightroom is using the wrong times, run the files through
Exifixer first.  It updates the creation and modification times to match
the JPEG's EXIF data.

### Usage

```
exifixer /path/to/file/folder
```

Or just run the included Mac application that allows files/folders to be dropped
on it (thanks to [Platypus](http://www.sveinbjorn.org/platypus)).

### About

Haphazardly banged out one dark evening for a friend.

License: same as [exifr's](https://github.com/remvee/exifr/blob/master/MIT-LICENSE).
