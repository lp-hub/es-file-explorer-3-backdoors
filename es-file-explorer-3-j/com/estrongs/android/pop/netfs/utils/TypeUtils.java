package com.estrongs.android.pop.netfs.utils;

import java.util.HashMap;

/* loaded from: classes.dex */
public class TypeUtils {
    public static final int ANDROID_APPLICATION = 65536;
    public static final int BIT_TORRENT = 393291;
    public static final int CHESS_FILE = 327743;
    public static final int ET_JOURNAL = 262203;
    public static final int ET_PUB = 262204;
    public static final int IMAGE_BMP = 65554;
    public static final int IMAGE_GIF = 65555;
    public static final int IMAGE_JPEG = 65556;
    public static final int IMAGE_JPG = 65553;
    public static final int IMAGE_PNG = 65552;
    public static final int MEDIA_3GP = 196650;
    public static final int MEDIA_AIF = 131113;
    public static final int MEDIA_AMR = 131107;
    public static final int MEDIA_ASF = 196647;
    public static final int MEDIA_AVI = 196651;
    public static final int MEDIA_FLAC = 131115;
    public static final int MEDIA_FLASH = 458753;
    public static final int MEDIA_M3U = 131114;
    public static final int MEDIA_M4A = 131109;
    public static final int MEDIA_MIDI = 131105;
    public static final int MEDIA_MKV = 196655;
    public static final int MEDIA_MP3 = 131104;
    public static final int MEDIA_MP4 = 196652;
    public static final int MEDIA_MPEG = 196654;
    public static final int MEDIA_MPG = 196653;
    public static final int MEDIA_OGG = 131108;
    public static final int MEDIA_QCP = 131111;
    public static final int MEDIA_RA = 131112;
    public static final int MEDIA_REALMEDIA = 196649;
    public static final int MEDIA_WAV = 131106;
    public static final int MEDIA_WMA = 131110;
    public static final int MEDIA_WMV = 196648;
    private static final HashMap<Integer, String> MIME_TYPE = new HashMap<>();
    public static final int MOBI_POCKET = 393292;
    public static final int NZB_FILE = 524289;
    public static final int OPEN_DOC = 327741;
    public static final int PDF_FILE = 327737;
    public static final int PLAIN_TEXT = 65537;
    public static final int WIN_BAT = 262195;
    public static final int WIN_CHM = 262208;
    public static final int WIN_DLL = 262197;
    public static final int WIN_DOC = 262192;
    public static final int WIN_EXCEL = 262193;
    public static final int WIN_EXE = 262196;
    public static final int WIN_HTML = 262194;
    public static final int WIN_LIB = 262198;
    public static final int WIN_PPT = 262199;
    public static final int XML_FILE = 327738;
    public static final int ZIP_FILE = 327736;

    static {
        MIME_TYPE.put(Integer.valueOf(BIT_TORRENT), "application/x-bittorrent");
        MIME_TYPE.put(Integer.valueOf(CHESS_FILE), "application/x-chess-pgn");
        MIME_TYPE.put(Integer.valueOf(ET_PUB), "application/epub+zip");
        MIME_TYPE.put(Integer.valueOf(ET_JOURNAL), "application/esj");
        MIME_TYPE.put(Integer.valueOf(MOBI_POCKET), "application/x-mobipocket-ebook");
        MIME_TYPE.put(Integer.valueOf(OPEN_DOC), "application/vnd.oasis.opendocument.text");
        MIME_TYPE.put(Integer.valueOf(NZB_FILE), "application/x-nzb");
        MIME_TYPE.put(Integer.valueOf(MEDIA_MP3), "audio/mpeg");
        MIME_TYPE.put(Integer.valueOf(MEDIA_MIDI), "audio/mid");
        MIME_TYPE.put(Integer.valueOf(MEDIA_WAV), "audio/x-wav");
        MIME_TYPE.put(Integer.valueOf(MEDIA_AMR), "audio/amr");
        MIME_TYPE.put(Integer.valueOf(MEDIA_OGG), "audio/ogg");
        MIME_TYPE.put(Integer.valueOf(MEDIA_M4A), "audio/mp4a-latm");
        MIME_TYPE.put(Integer.valueOf(MEDIA_WMA), "audio/x-ms-wma");
        MIME_TYPE.put(Integer.valueOf(MEDIA_QCP), "audio/vnd.qcelp");
        MIME_TYPE.put(Integer.valueOf(MEDIA_RA), "audio/x-pn-realaudio");
        MIME_TYPE.put(Integer.valueOf(MEDIA_AIF), "audio/x-aiff");
        MIME_TYPE.put(Integer.valueOf(MEDIA_M3U), "audio/x-mpegurl");
        MIME_TYPE.put(Integer.valueOf(MEDIA_FLAC), "audio/flac");
        MIME_TYPE.put(Integer.valueOf(MEDIA_ASF), "video/x-ms-asf");
        MIME_TYPE.put(Integer.valueOf(MEDIA_WMV), "video/x-ms-wmv");
        MIME_TYPE.put(Integer.valueOf(MEDIA_REALMEDIA), "video/*");
        MIME_TYPE.put(Integer.valueOf(MEDIA_3GP), "video/3gpp");
        MIME_TYPE.put(Integer.valueOf(MEDIA_AVI), "video/x-msvideo");
        MIME_TYPE.put(Integer.valueOf(MEDIA_MP4), "video/mp4");
        MIME_TYPE.put(Integer.valueOf(MEDIA_MPG), "video/mpeg");
        MIME_TYPE.put(Integer.valueOf(MEDIA_MPEG), "video/mpeg");
        MIME_TYPE.put(Integer.valueOf(MEDIA_MKV), "video/x-matroska");
        MIME_TYPE.put(Integer.valueOf(IMAGE_PNG), "image/png");
        MIME_TYPE.put(Integer.valueOf(IMAGE_JPG), "image/jpeg");
        MIME_TYPE.put(Integer.valueOf(IMAGE_BMP), "image/bmp");
        MIME_TYPE.put(Integer.valueOf(IMAGE_GIF), "image/gif");
        MIME_TYPE.put(Integer.valueOf(IMAGE_JPEG), "image/jpeg");
        MIME_TYPE.put(Integer.valueOf(WIN_DOC), "application/msword");
        MIME_TYPE.put(Integer.valueOf(WIN_EXCEL), "application/vnd.ms-excel");
        MIME_TYPE.put(Integer.valueOf(WIN_HTML), "text/html");
        MIME_TYPE.put(Integer.valueOf(WIN_BAT), "magnus-internal/cgi");
        MIME_TYPE.put(Integer.valueOf(WIN_EXE), "\tmagnus-internal/cgi");
        MIME_TYPE.put(Integer.valueOf(WIN_PPT), "application/vnd.ms-powerpoint");
        MIME_TYPE.put(Integer.valueOf(WIN_CHM), "image/jpeg");
        MIME_TYPE.put(Integer.valueOf(ZIP_FILE), "application/zip");
        MIME_TYPE.put(Integer.valueOf(PDF_FILE), "application/pdf");
        MIME_TYPE.put(Integer.valueOf(MEDIA_FLASH), "application/x-shockwave-flash");
    }

    public static final String getApkSuffix() {
        return new String(".apk");
    }

    public static String getAudioMimeType(int i) {
        String str = MIME_TYPE.get(Integer.valueOf(i));
        return str == null ? "audio/*" : str;
    }

    public static final int getFileType(String str) {
        if (str == null || str.trim().length() < 1) {
            return -1;
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(".apk")) {
            return 65536;
        }
        if (lowerCase.endsWith(".png")) {
            return IMAGE_PNG;
        }
        if (lowerCase.endsWith(".jpg")) {
            return IMAGE_JPG;
        }
        if (lowerCase.endsWith(".bmp")) {
            return IMAGE_BMP;
        }
        if (lowerCase.endsWith(".gif")) {
            return IMAGE_GIF;
        }
        if (lowerCase.endsWith(".jpeg")) {
            return IMAGE_JPEG;
        }
        if (lowerCase.endsWith(".mp3")) {
            return MEDIA_MP3;
        }
        if (lowerCase.endsWith(".mp4") || lowerCase.endsWith(".m4v")) {
            return MEDIA_MP4;
        }
        if (lowerCase.endsWith(".avi")) {
            return MEDIA_AVI;
        }
        if (lowerCase.endsWith(".mid") || lowerCase.endsWith(".midi") || lowerCase.endsWith("rmi")) {
            return MEDIA_MIDI;
        }
        if (lowerCase.endsWith(".wmv")) {
            return MEDIA_WMV;
        }
        if (lowerCase.endsWith(".wav")) {
            return MEDIA_WAV;
        }
        if (lowerCase.endsWith(".asf")) {
            return MEDIA_ASF;
        }
        if (lowerCase.endsWith(".mpg")) {
            return MEDIA_MPG;
        }
        if (lowerCase.endsWith(".mpeg")) {
            return MEDIA_MPEG;
        }
        if (lowerCase.endsWith(".3gp") || lowerCase.endsWith(".3gpp")) {
            return MEDIA_3GP;
        }
        if (lowerCase.endsWith(".amr")) {
            return MEDIA_AMR;
        }
        if (lowerCase.endsWith(".rm") || lowerCase.endsWith(".rmvb")) {
            return MEDIA_REALMEDIA;
        }
        if (lowerCase.endsWith(".ogg") || lowerCase.endsWith(".x-ogg")) {
            return MEDIA_OGG;
        }
        if (lowerCase.endsWith(".m4a") || lowerCase.endsWith(".aac")) {
            return MEDIA_M4A;
        }
        if (lowerCase.endsWith(".wma")) {
            return MEDIA_WMA;
        }
        if (lowerCase.endsWith(".doc") || lowerCase.endsWith(".docx")) {
            return WIN_DOC;
        }
        if (lowerCase.endsWith(".ppt") || lowerCase.endsWith(".pps") || lowerCase.endsWith(".ppx") || lowerCase.endsWith(".pptx") || lowerCase.endsWith(".odp")) {
            return WIN_PPT;
        }
        if (lowerCase.endsWith(".xls") || lowerCase.endsWith(".xlsx") || lowerCase.endsWith(".xla") || lowerCase.endsWith(".xlc") || lowerCase.endsWith(".xlm") || lowerCase.endsWith(".xlt") || lowerCase.endsWith(".xlsm") || lowerCase.endsWith(".xlsb")) {
            return WIN_EXCEL;
        }
        if (lowerCase.endsWith(".chm")) {
            return WIN_CHM;
        }
        if (lowerCase.endsWith(".html") || lowerCase.endsWith(".htm") || lowerCase.endsWith(".mht")) {
            return WIN_HTML;
        }
        if (lowerCase.endsWith(".bat")) {
            return WIN_BAT;
        }
        if (lowerCase.endsWith(".exe")) {
            return WIN_EXE;
        }
        if (lowerCase.endsWith(".dll")) {
            return WIN_DLL;
        }
        if (lowerCase.endsWith(".lib")) {
            return WIN_LIB;
        }
        if (lowerCase.endsWith(".txt") || lowerCase.endsWith(".text") || lowerCase.endsWith(".ini") || lowerCase.endsWith(".properties") || lowerCase.endsWith(".prop") || lowerCase.endsWith(".xml") || lowerCase.endsWith(".conf") || lowerCase.endsWith(".classpath") || lowerCase.endsWith(".project") || lowerCase.endsWith(".php") || lowerCase.endsWith(".js") || lowerCase.endsWith(".rss") || lowerCase.endsWith(".jsp") || lowerCase.endsWith(".asp") || lowerCase.endsWith(".aspx") || lowerCase.endsWith(".c") || lowerCase.endsWith(".java") || lowerCase.endsWith(".vb") || lowerCase.endsWith(".vbs") || lowerCase.endsWith(".h")) {
            return PLAIN_TEXT;
        }
        if (lowerCase.endsWith(".zip") || lowerCase.endsWith(".tar") || lowerCase.endsWith(".gz") || lowerCase.endsWith(".rar") || lowerCase.endsWith(".cab") || lowerCase.endsWith(".esi") || lowerCase.endsWith(".7z")) {
            return ZIP_FILE;
        }
        if (lowerCase.endsWith(".xml")) {
            return XML_FILE;
        }
        if (lowerCase.endsWith(".pdf")) {
            return PDF_FILE;
        }
        if (lowerCase.endsWith(".esj")) {
            return ET_JOURNAL;
        }
        if (lowerCase.endsWith(".qcp")) {
            return MEDIA_QCP;
        }
        if (lowerCase.endsWith(".epub")) {
            return ET_PUB;
        }
        if (lowerCase.endsWith(".torrent")) {
            return BIT_TORRENT;
        }
        if (lowerCase.endsWith(".pgn") || lowerCase.endsWith(".xqf")) {
            return CHESS_FILE;
        }
        if (lowerCase.endsWith(".odt")) {
            return OPEN_DOC;
        }
        if (lowerCase.endsWith(".mobi") || lowerCase.endsWith(".prc")) {
            return MOBI_POCKET;
        }
        if (lowerCase.endsWith(".mkv")) {
            return MEDIA_MKV;
        }
        if (lowerCase.endsWith(".flac")) {
            return MEDIA_FLAC;
        }
        if (lowerCase.endsWith(".aif") || lowerCase.endsWith("aifc") || lowerCase.endsWith("aiff")) {
            return MEDIA_AIF;
        }
        if (lowerCase.endsWith(".ra") || lowerCase.endsWith("ram")) {
            return MEDIA_RA;
        }
        if (lowerCase.endsWith(".m3u")) {
            return MEDIA_M3U;
        }
        if (lowerCase.endsWith(".flv") || lowerCase.endsWith(".swf")) {
            return MEDIA_FLASH;
        }
        if (lowerCase.endsWith(".nzb")) {
            return NZB_FILE;
        }
        return -1;
    }

    public static final String getImageFileSuffix() {
        return new String(".jpg;.jpeg;.png;.bmp;.gif");
    }

    public static final String getMediaFileSuffix() {
        return new String(".mp3;.mp4;.3gp;.3gpp;.amr;.mid;.midi;.wmv;.wma;.ogg;.x-ogg;.wav;.m4a;.aac;.rm;.rmvb;.avi;.mpg;.mpeg;.asf;.m4v;.mkv");
    }

    public static String getMimetypeName(int i) {
        return MIME_TYPE.get(Integer.valueOf(i));
    }

    public static String getVideoMimeType(int i) {
        String str = MIME_TYPE.get(Integer.valueOf(i));
        return str == null ? "video/*" : str;
    }

    public static final String getZipSuffix() {
        return new String(".zip;.rar;.tar;.gzip;.bz2;.gz;.7z;.esi");
    }

    public static final boolean isAndroidApp(String str) {
        return getFileType(str) == 65536;
    }

    public static final boolean isAudioFile(String str) {
        int fileType = getFileType(str);
        return fileType >= 131104 && fileType <= 131115;
    }

    public static final boolean isBTFile(String str) {
        return getFileType(str) == 393291;
    }

    public static final boolean isChessFile(String str) {
        return getFileType(str) == 327743;
    }

    public static final boolean isChmFile(String str) {
        return getFileType(str) == 262208;
    }

    public static final boolean isETJournalFile(String str) {
        return getFileType(str) == 262203;
    }

    public static final boolean isETPubFile(String str) {
        return getFileType(str) == 262204;
    }

    public static boolean isEcrypteFile(String str) {
        if (str == null) {
            return false;
        }
        return str.toLowerCase().endsWith(".esc");
    }

    public static final boolean isExcelFile(String str) {
        return getFileType(str) == 262193;
    }

    public static final boolean isFlashFile(String str) {
        return getFileType(str) == 458753;
    }

    public static final boolean isGzFile(String str) {
        if (str == null) {
            return false;
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.endsWith(".gzip") || lowerCase.endsWith(".gz");
    }

    public static final boolean isHtmlFile(String str) {
        return getFileType(str) == 262194;
    }

    public static final boolean isImageFile(String str) {
        int fileType = getFileType(str);
        return fileType >= 65552 && fileType <= 65556;
    }

    public static final boolean isJpegFile(String str) {
        return getFileType(str) == 65556 || getFileType(str) == 65553;
    }

    public static final boolean isMediaFile(String str) {
        int fileType = getFileType(str);
        return fileType >= 131104 && fileType <= 196655;
    }

    public static final boolean isMobiPocketFile(String str) {
        return getFileType(str) == 393292;
    }

    public static final boolean isNZBFile(String str) {
        return getFileType(str) == 524289;
    }

    public static final boolean isOggMediaFile(String str) {
        return getFileType(str) == 131108;
    }

    public static final boolean isOpenDocument(String str) {
        return getFileType(str) == 327741;
    }

    public static final boolean isPdfFile(String str) {
        return getFileType(str) == 327737;
    }

    public static final boolean isPngFile(String str) {
        return getFileType(str) == 65552;
    }

    public static final boolean isPptFile(String str) {
        return getFileType(str) == 262199;
    }

    public static final boolean isQcpMediaFile(String str) {
        return getFileType(str) == 131111;
    }

    public static final boolean isRarFile(String str) {
        if (str == null) {
            return false;
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        return str.toLowerCase().endsWith(".rar");
    }

    public static boolean isTarFile(String str) {
        if (str == null) {
            return false;
        }
        return str.endsWith(".tar");
    }

    public static final boolean isTextFile(String str) {
        return getFileType(str) == 65537;
    }

    public static final boolean isUnsupportedMediaTypes(String str) {
        return str.endsWith("rm") || str.endsWith("rmvb") || str.endsWith(".mpg") || str.endsWith(".mpeg") || str.endsWith(".asf") || str.endsWith(".flv");
    }

    public static final boolean isVideoFile(String str) {
        int fileType = getFileType(str);
        return fileType >= 196647 && fileType <= 196655;
    }

    public static final boolean isWordFile(String str) {
        return getFileType(str) == 262192;
    }

    public static final boolean isXmlFile(String str) {
        return getFileType(str) == 327738;
    }

    public static final boolean isZipFile(String str) {
        return getFileType(str) == 327736;
    }

    public static final boolean isZipFile_Current(String str) {
        if (str == null) {
            return false;
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        return str.toLowerCase().endsWith(".zip");
    }
}
