Ubunutu 20.4 LTS
---------------------

```
vagrant plugin install vagrant-vbguest
```

```ruby
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    # Set the resolution (Width x Height)
    vb.customize ["setextradata", :id, "CustomVideoMode1", "1920x1080x32"]

    vb.customize ["modifyvm", :id, "--video", "16MB"]  # Allocate more video memory
    vb.customize ['setextradata', :id, 'CustomVideoMode1', '1920x1080x32']
```

A few errors:

```
Could not insert the /Applications/VirtualBox.app/Contents/MacOS/VBoxGuestAdditions.iso disk image file into the virtual machine Ubuntu 20.04-dev, as the machine has no optical drives. Please add a drive using the storage page of the virtual machine settings window.

The Virtual Machine reports that the guest OS does not support mouse pointer integration in the current video mode. You need to capture the mouse (by clicking over the VM display or pressing the host key) in order to use the mouse inside the guest OS.

You have the Auto capture keyboard option turned on. This will cause the Virtual Machine to automatically capture the keyboard every time the VM window is activated and make it unavailable to other applications running on your host machine: when the keyboard is captured, all keystrokes (including system ones like Alt-Tab) will be directed to the VM.
You can press the host key at any time to uncapture the keyboard and mouse (if it is captured) and return them to normal operation. The currently assigned host key is shown on the status bar at the bottom of the Virtual Machine window. This icon, together with the mouse icon placed nearby, indicate the current keyboard and mouse capture state.
The host key is currently defined as Left ⌘.
```

Warnings

```
The virtual machine window will be now switched to Scale mode. You can go back to windowed mode at any time by pressing Host+C.
Note that the Host key is currently defined as Left ⌘.
Note that the main menu bar is hidden in scaled mode. You can access it by pressing Host+Home.
```
