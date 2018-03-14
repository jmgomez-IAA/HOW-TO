How to Vera ++

git clone https://bitbucket.org/verateam/vera.git
cd vera
git submodule update --init


git pull
git submodule update


// Buscar versiones necesarias y los repositorios... usar version 2.5 importante
zypper in ghc-Cabal-devel ghc-rpm-macros ghc-base64-bytestring-devel ghc-blaze-html-devel ghc-bytestring-devel ghc-citeproc-hs-devel ghc-containers-devel ghc-directory-devel ghc-dlist-devel ghc-extensible-exceptions-devel ghc-filepath-devel ghc-highlighting-kate-devel ghc-HTTP-devel ghc-json-devel ghc-mtl-devel ghc-network-devel ghc-old-locale-devel ghc-pandoc-types-devel ghc-parsec-devel ghc-process-devel ghc-random-devel ghc-syb-devel ghc-tagsoup-devel ghc-temporary-devel ghc-texmath-devel ghc-time-devel ghc-utf8-string-devel ghc-xml-devel ghc-zip-archive-devel ghc-zlib-devel 

zypper in  ghc-base64-bytestring-0.1.2.0-1.4
zypper in  ghc-blaze-builder-0.3.1.0-3.4 
zypper in  ghc-citeproc-hs-locales-0.3.8-1.2 
zypper in  ghc-dlist-0.5-2.4
zypper in  ghc-rpm-macros-0.99-14.1 
zypper in ghc-pandoc-types-1.10-2.2 
zypper in ghc-pcre-light-0.4-4.4 
zypper in ghc-random-1.0.1.1-2.4 
zypper in ghc-tagsoup-0.12.6-2.4 
zypper in ghc-base64-bytestring-devel-0.1.2.0-1.4 
zypper in ghc-blaze-markup-0.5.1.1-1.4 
zypper in ghc-blaze-builder-devel-0.3.1.0-3.4 
zypper in ghc-dlist-devel-0.5-2.4 
zypper in ghc-pandoc-types-devel-1.10-2.2 
zypper in ghc-citeproc-hs-0.3.8-1.2 
zypper in ghc-random-devel-1.0.1.1-2.4 
zypper in ghc-tagsoup-devel-0.12.6-2.4 
zypper in ghc-blaze-html-0.5.1.0-1.4 
zypper in ghc-blaze-markup-devel-0.5.1.1-1.4 
zypper in ghc-citeproc-hs-devel-0.3.8-1.2 
zypper in ghc-highlighting-kate-0.5.1-1.4 
zypper in ghc-blaze-html-devel-0.5.1.0-1.4 
zypper in libpcre16-0-8.31-4.1.1 
zypper in libpcrecpp0-8.31-4.1.1 
zypper in libpcreposix0-8.31-4.1.1 
zypper in libstdc++47-devel-4.7.2_20130108-2.1.6 
zypper in libstdc++-devel-4.7-7.1.1
zypper in pcre-devel-8.31-4.1.1 
zypper in ghc-pcre-light-devel-0.4-4.4 
zypper in ghc-highlighting-kate-devel-0.5.1-1.4 

'ghc-Cabal-devel' is already installed.
No update candidate for 'ghc-Cabal-devel-1.16.0-6.2.x86_64'. The highest available version is already installed.
'ghc-bytestring-devel' is already installed.
No update candidate for 'ghc-bytestring-devel-0.10.0.2-6.2.x86_64'. The highest available version is already installed.
'ghc-containers-devel' is already installed.
No update candidate for 'ghc-containers-devel-0.5.0.0-6.2.x86_64'. The highest available version is already installed.
'ghc-mtl-devel' is already installed.
There is an update candidate for 'ghc-mtl-devel', but it is from different vendor. Use 'zypper install ghc-mtl-devel-2.1.2-2.1.1.x86_64' to install this candidate.
'ghc-filepath-devel' is already installed.
No update candidate for 'ghc-filepath-devel-1.3.0.1-6.2.x86_64'. The highest available version is already installed.
'ghc-directory-devel' is already installed.
No update candidate for 'ghc-directory-devel-1.2.0.1-6.2.x86_64'. The highest available version is already installed.
'ghc-time-devel' is already installed.
No update candidate for 'ghc-time-devel-1.4.0.1-6.2.x86_64'. The highest available version is already installed.
'ghc-old-locale-devel' is already installed.
No update candidate for 'ghc-old-locale-devel-1.0.0.5-6.2.x86_64'. The highest available version is already installed.
'ghc-syb-devel' is already installed.
No update candidate for 'ghc-syb-devel-0.4.0-1.2.x86_64'. The highest available version is already installed.
'ghc-parsec-devel' is already installed.
No update candidate for 'ghc-parsec-devel-3.1.3-2.3.x86_64'. The highest available version is already installed.
'ghc-process-devel' is already installed.
No update candidate for 'ghc-process-devel-1.1.0.2-6.2.x86_64'. The highest available version is already installed.
'ghc-network-devel' is already installed.
No update candidate for 'ghc-network-devel-2.4.1.2-1.3.x86_64'. The highest available version is already installed.
'ghc-utf8-string-devel' is already installed.
ghc-utf8-string-devel-0.3.7-2.4.x86_64'. The highest available version is already installed.

ghc-HTTP-devel-4000.2.8-1.3.x86_64

ghc-extensible-exceptions-devel-0.1.1.4-6.4.x86_64

ghc-json-devel-0.5-3.4.x86_64

ghc-xml-devel-1.3.12-3.4.x86_64

ghc-zlib-devel-0.5.4.1-1.2.x86_64

ghc-temporary-devel-1.1.2.4-1.4.x86_64

ghc-texmath-devel-0.6.1.3-1.2.x86_64
ghc-zip-archive-devel-0.1.3.4-1.2.x86_64



zypper in cmake
zypper in pattern devel_C_C++

cd vera
mkdir build
cd build
cmake ..
make -j
make install

//copy files from ./vera
cd vera
cp nomad /usr/local/lib/vera/profiles/
cd ..