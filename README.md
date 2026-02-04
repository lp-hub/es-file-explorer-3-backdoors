# ES File Explorer 3 Backdoors

## Purpose

- Study how spyware works

- Debugging study

## Current state

- Fixed file manager can't be shared because of license

- But there was no problem to spread spyware under license

- nmap -p 59777 (& others) -sV 192.168.0.100 closed

- Do not see any loss of functionality after patches

- Getting message: Cannot start streaming server

### Known Issues

- See vulnerabilities.txt

- May open insecure port 59777 if LAN service is used

- May contain hidden analytics and ping home

- Lacks SMBv2/3 (only SMBv1, which is deprecated and insecure)

```
nmap -p 59777 -sV 192.168.0.100
Starting Nmap 7.94SVN ( https://nmap.org ) at 2025-06-15 15:22 EEST
Nmap scan report for 192.168.0.100
Host is up (0.093s latency).

PORT      STATE SERVICE VERSION
59777/tcp open  http    Bukkit JSONAPI httpd for Minecraft game server 3.6.0 or older
```

Upatched original apk shows message "Unfortunately ES File Exporer has stopped",
when scanning ports. Patched version collapses when scanning ports.

```
59777 — main vulnerable API endpoint, video/audio player HTTP server
35864 — FTP server functionality officially
42135 — API server, LAN or Cloud discovery responder
```

### Fixes:

- Removed all hardcoded localhosts and ports with zero results

```
/res/layout/dialog_recv_result.xml
/smali/com/estrongs/android/pop/app/PopAudioPlayer.smali
/smali/com/estrongs/android/c/g.smali
/smali/com/estrongs/android/pop/app/AudioPlayerService.smali http://127.0.0.1:35864/
/smali/com/estrongs/android/pop/app/PopVideoPlayer.smali
/smali/com/estrongs/android/pop/app/a/a.smali
/smali/com/estrongs/android/ui/e/er.smali
/smali/com/estrongs/android/ui/view/u.smali http://127.0.0.1:50767
/smali/com/estrongs/android/util/ak.smali
/smali/com/jcraft/jsch/ChannelDirectTCPIP.smali
/smali/com/jcraft/jsch/ChannelX11.smali
/smali/com/jcraft/jsch/Session.smali
/smali/jcifs/dcerpc/DcerpcHandle.smali
/smali/jcifs/netbios/NbtAddress.smali
```

- Patched /smali/com/estrongs/a/b/d.smali 0xA497 = 42135

- Patched /smali/com/estrongs/android/c/g.smali 59777