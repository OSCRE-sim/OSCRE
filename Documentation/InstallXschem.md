1. **Follow the instructions found here for tcl-tk**
    http://web02.gonzaga.edu/faculty/talarico/vlsi/StefanBigSur.html

2. **Install Xschem *(adapted from the above link)***
    ```sh
    brew install cairo ngspice libxpm macvim dbus jpeg
    export DYLD_LIBRARY_PATH="/usr/local/opt/tcl-tk/lib:/opt/X11/lib"
    sudo ln -s /usr/local/opt/tcl-tk/lib/libtk8.6.dylib /opt/X11/lib/libtk8.6.dylib
    ```

3. **Add the following to zshrc or bashrc**
    ```sh
    #nano ~/.bashrc # or
    nano ~/.zshrc
    
    # For Xschem # NOTE: If you install with the github link, this may be at /Users/$(whoami)/xschem-macos/bin
    export PATH="/Users/$(whoami)/opt/xschem/bin:$PATH"
    export DYLD_LIBRARY_PATH="/usr/local/opt/tcl-tk/lib:/opt/X11/lib" # May be necessary to fix hanging app
    
    export DISPLAY=:0
    ```

    **The Following is only necessary if tcl-tk is installed via homebrew**
    ```sh
    # For Homebrew's Tcl-Tk #
    export PATH="/opt/homebrew/opt/tcl-tk/bin:$PATH"
    export LDFLAGS="-L/opt/homebrew/opt/tcl-tk/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/tcl-tk/include"
    export PKG_CONFIG_PATH="/opt/homebrew/opt/tcl-tk/lib/pkgconfig"
    ```

4. **Replace Makefile.conf statements from link with the following**
    ```sh
    CFLAGS=-std=c99 -I/opt/X11/include -I/opt/X11/include/cairo -I/usr/local/opt/tcl-tk/include -I/usr/local/include -I/opt/homebrew/Cellar/jpeg/9f/include -O2
    LDFLAGS=-L/opt/X11/lib -L/usr/local/opt/tcl-tk/lib -L/usr/local/lib -L/opt/homebrew/Cellar/jpeg/9f/lib -lm -lcairo -ljpeg -lX11 -lXrender -lxcb -lxcb-render -lX11-xcb -lXpm -ltcl8.6 -ltk8.6
    ```

5. **Build Xschem**
    ```sh
    make clean
    make
    ```
