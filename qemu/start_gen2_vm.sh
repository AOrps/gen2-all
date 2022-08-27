#!/bin/bash
IMG="gen2-vm.img"
IMG_SIZE="15G"

# 
rm *.img

case `uname` in
    # Windows
    MINGW64_NT-*) 

        # Create disk image for gen2, if file is not created
        [ ! -f $IMG ] && qemu-img.exe create -f qcow2 $IMG $IMG_SIZE

        # Not gentoo isos
        qemu-system-x86_64.exe \
            -cpu max \
            -drive file=$IMG \
            -m 2G \
            -name "gentoo vm" \
            -boot d \
            $@

        # # Gentoo
        # # Get into qemu
        # qemu-system-x86_64.exe \
        #     -cpu max \
        #     -drive file=$IMG \
        #     -m 2G \
        #     -name "gentoo vm" \
        #     -nographic \
        #     -boot d \
        #     $@
        #     # -monitor stdio \
        #     # -netdev user,id=vmnic \
        ;;

    # Linux
    linux) 

        ;;

    # what?
    *) echo "what did you do?"
        ;;
esac