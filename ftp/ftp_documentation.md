# FTP documentation

## Purpose of the tool
- Having an ftp service set up on a server allows users to access their files and upload new ones, from any device, using any ftp client they prefer
 
## Connecting to the ftp server with Filezilla
- Filezilla is a well-featured ftp client/server.
  - You can install it and finds the docs at https://filezilla-project.org/
- We are using the fstp protocol, not exactly the ftp protocol, so we have to configure for that in filezilla.
  1. Go to File>Site Manager. If you don't have any site in the list, create a new one.
  2. Choose the SFTP protocol.
  3. In "Host", put the server's ip address
  4. Use the same port as usual (you know...)
  5. Let "Logon Type" on Normal, and for user/password, enter the credentials of the server's user you want to connect with.
- Then click ok to save this info.
- Then you can connect to your server by selecting it's name in the top-left corner of rner of filezilla's interface
        ![image](../Assets/ftp_connect.png)

## Setting up your ftp server with vsftpd
- vsftpd "is a lightweight, stable and secure FTP server for UNIX-like systems." - Arch Wiki
- I followed [this tutorial](https://wiki.archlinux.org/title/Very_Secure_FTP_Daemon).
- To install it
  - ``sudo apt-get install vsftpd``
- Then you need to start the daemon. 
  - A daemon is a small program running in the background, providing constant service when the server is online.
  - If you just want to start or stop the service:
    - ``sudo systemctl start vsftpd``
    - ``sudo systemctl stop vsftpd``
  - But if you want it to run automatically every time you boot the server:
    - ``sudo systemctl **enable** vsftpd``
  - To check that is working, run ``sudo systemctl status vsftpd``
  - And then you only have configuration left! For that, open /etc/vsftpd.conf
    - Most of that you need is enabled by default, except the ``write_enable=YES`` line which should be uncommented
    - There are many configuration options, like restricting access to a certain set of users, letting users only log to certain directories, etc.
