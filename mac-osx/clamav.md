# Installing
## MacPorts
If you don't have it already, get MacPorts. You'll also need Xcode and the Xcode command line utilities (Xcode -> Preferences -> Components).

## ClamAV
In the terminal:

    $ sudo port install clamav
  
Copy the example freshclam.conf and edit it:

    $ cd /opt/local/etc
    $ sudo cp example-freshclam.conf  freshclam.conf
    $ sudo vi freshclam.conf

Remove the line:

    Example

Add mirrors lines to refer to the UK mirrors:

    DatabaseMirror db.uk.ipv6.clamav.net
    DatabaseMirror db.uk.clamav.net
    
If it doesn't exist already, create a working directory for ClamAV and change permissions:

    $ sudo mkdir /opt/local/share/clamav/
    $ sudo chown -R clamav:clamav /opt/local/share/clamav/
    
Test it.

    $ sudo freshclam

# Scanning

Get the latest definitions.

    $ sudo freshclam

Scan your suspect file or files:

    $ sudo clamscan -ir ~/Desktop/some-file.zip
    $ sudo clamscan -ir ~/some-dir/

Note: ```sudo``` isn't always necessary, but it does eliminate potential problems with file permissions - clamscan can't scan files it can't access!

You'll get a handy summary of your scan:

    ----------- SCAN SUMMARY -----------
    Known viruses: 2024329
    Engine version: 0.97.7
    Scanned directories: 0
    Scanned files: 1
    Infected files: 0
    Data scanned: 0.12 MB
    Data read: 0.07 MB (ratio 1.88:1)
    Time: 8.113 sec (0 m 8 s)
    
# Disclaimer

Guide originally found on http://wiki.stocksy.co.uk/wiki/Virus_scanning. 
