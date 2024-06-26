Great! Here are all the commands you need to run to install the GTK Analog Wave Viewer (gaw) on your Mac:

1. **Install Homebrew** (if not already installed):
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install Dependencies**:
   ```sh
   brew install gtk+3 cairo pango autoconf automake libtool pkg-config at-spi2-core
   ```

3. **Clone the xschem-gaw Repository**:
   ```sh
   git clone https://github.com/StefanSchippers/xschem-gaw.git
   cd xschem-gaw
   ```

4. **Generate Configuration Files and Build**:
   ```sh
   autoreconf --install
   automake --add-missing
   ./configure
   make
   sudo make install
   ```

5. **Add the following to bashrc or zshrc**:
   ```sh
   #nano ~/.bashrc # or
   nano ~/.zshrc
   export NO_AT_BRIDGE=1
   ```

6. **Source the bashrc or zshrc or open new terminal window**:
   ```sh
   source ~/.bashrc # or
   source ~/.zshrc
   ```

7. **Run the GTK Analog Wave Viewer**:
   ```sh
    gaw
    ```
