 
Malcolmlewis was also kind enough to package gImageReader for openSUSE-12.3.

For information, to setup gImageReader to read/OCR German and French in opnSUSE-12.3, I followed the guide above, but instead for 12.3 modified it to (as root) using the following repositories/commands:

Code:

zypper ar http://download.opensuse.org/repositories/home:/Lazy_Kent/openSUSE_12.3/ kent-ocr
zypper ar http://download.opensuse.org/repositories/home:/malcolmlewis:/Miscellanous/openSUSE_12.3/ malcolm
zypper ar http://download.opensuse.org/repositories/home:/vodoo/openSUSE_12.3/ vodoo-ocr

followed by

Code:

zypper in myspell-french myspell-german aspell aspell-de aspell-en aspell-fr ispell-french ispell-german aspell-spell
zypper in tesseract tesseract-traineddata-deu tesseract-traineddata-eng tesseract-traineddata-fra python-gimagereader python-imaging

and then removed the repositories that I added during the install:
Code:

zypper rr malcolm
zypper rr kent-ocr
zypper rr vodoo-ocr


and then typed (as a regular user):
Code:

gimagereader

and performed an OCR test with a scanned French language page.

Note the above repositories that I used are not official repositories, but rather private repositories of various individuals. The rpms that are on those repositories, while present today, may not be present tomorrow. 