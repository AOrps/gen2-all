# gen2-all/qemu

## Create disk image for VM
- Template: `qemu-img create -f qcow2 <filename>.img <img size>`
```sh
# For Windows: Replace (qemu-img) to (qemu-img.exe)
qemu-img create -f qcow2 gentoo-vm.img 15G
```

## 


### Windows
`qemu-system-x86_64.exe -cpu max -drive file=gen2-vm.img -boot d -cdrom gentoo-mini.iso -nographic`

- Run: `./start_gen2_vm.sh -cdrom <file.iso>`

```sh
# Template
qemu-system-x86_64.exe \
    -drive file=<img>.img \
    -m <memory size> \
    -smp <number of threads> \
    -nographic \
    -name "<gentoo name>"
    -boot d
    -cdrom <gentoo>.iso
```

### Linux


## Resources
- [QEMU: A proper guide!](https://www.youtube.com/watch?v=AAfFewePE7c)
- [QEMU/Linux guest](https://wiki.gentoo.org/wiki/QEMU/Linux_guest)
- [QEMU/Options](https://wiki.gentoo.org/wiki/QEMU/Options)
