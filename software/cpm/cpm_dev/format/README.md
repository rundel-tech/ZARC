# ZARC CP/M 2.2 Disk Formatter
This programme is intended to run under CP/M 2.2 on my ZARC retro-computer project. It formats a "drive" on the MMC (Flash memory) card ready for use by the filing system. Unlike formatters for physical disks, the sectors are already prepared so most of the work is done. All that is required it so mark the directory entries as unused.

This programme reads the DPB to discover the organisation of the disk, so it should work for any sensible disk size or organisation. It is unlikely to be useful on a system with physical floppy disk drives as it knows nothing about formatting sectors.
