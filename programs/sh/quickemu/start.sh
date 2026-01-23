#!/usr/bin/dash

quickemu --vm windows-11.conf --public-dir "./shared" --extra_args "--drive media=cdrom,index=3,file=windows-11/virtio-win.iso" 
