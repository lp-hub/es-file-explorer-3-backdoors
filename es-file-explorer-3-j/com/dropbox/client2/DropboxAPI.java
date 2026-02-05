package com.dropbox.client2;

import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.loginshare.Utils;
import com.dropbox.client2.ProgressListener;
import com.dropbox.client2.RESTUtility;
import com.dropbox.client2.exception.DropboxException;
import com.dropbox.client2.exception.DropboxIOException;
import com.dropbox.client2.exception.DropboxLocalStorageFullException;
import com.dropbox.client2.exception.DropboxParseException;
import com.dropbox.client2.exception.DropboxPartialFileException;
import com.dropbox.client2.exception.DropboxServerException;
import com.dropbox.client2.exception.DropboxUnlinkedException;
import com.dropbox.client2.jsonextract.JsonExtractionException;
import com.dropbox.client2.jsonextract.JsonExtractor;
import com.dropbox.client2.jsonextract.JsonList;
import com.dropbox.client2.jsonextract.JsonMap;
import com.dropbox.client2.jsonextract.JsonThing;
import com.dropbox.client2.session.Session;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.NetFileInfo;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.SyncFailedException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.entity.mime.MIME;
import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

/* loaded from: classes.dex */
public class DropboxAPI<SESS_T extends Session> {
    public static final long MAX_UPLOAD_SIZE = 188743680;
    protected static final int METADATA_DEFAULT_LIMIT = 25000;
    private static final int REVISION_DEFAULT_LIMIT = 1000;
    public static final String SDK_VERSION = SdkVersion.get();
    private static final int SEARCH_DEFAULT_LIMIT = 10000;
    private static final int UPLOAD_SO_TIMEOUT_MS = 180000;
    public static final int VERSION = 1;
    protected final SESS_T session;

    /* loaded from: classes.dex */
    public class Account implements Serializable {
        private static final long serialVersionUID = 2097522622341535732L;
        public final String country;
        public final String displayName;
        public final long quota;
        public final long quotaNormal;
        public final long quotaShared;
        public final String referralLink;
        public final long uid;

        protected Account(String str, String str2, long j, String str3, long j2, long j3, long j4) {
            this.country = str;
            this.displayName = str2;
            this.uid = j;
            this.referralLink = str3;
            this.quota = j2;
            this.quotaNormal = j3;
            this.quotaShared = j4;
        }

        protected Account(Map<String, Object> map) {
            this.country = (String) map.get("country");
            this.displayName = (String) map.get("display_name");
            this.uid = DropboxAPI.getFromMapAsLong(map, BDAccountManager.KEY_UID);
            this.referralLink = (String) map.get("referral_link");
            Map map2 = (Map) map.get("quota_info");
            this.quota = DropboxAPI.getFromMapAsLong(map2, "quota");
            this.quotaNormal = DropboxAPI.getFromMapAsLong(map2, "normal");
            this.quotaShared = DropboxAPI.getFromMapAsLong(map2, "shared");
        }
    }

    /* loaded from: classes.dex */
    public final class BasicUploadRequest implements UploadRequest {
        private final HttpUriRequest request;
        private final Session session;

        public BasicUploadRequest(HttpUriRequest httpUriRequest, Session session) {
            this.request = httpUriRequest;
            this.session = session;
        }

        @Override // com.dropbox.client2.DropboxAPI.UploadRequest
        public void abort() {
            this.request.abort();
        }

        @Override // com.dropbox.client2.DropboxAPI.UploadRequest
        public Entry upload() {
            try {
                return new Entry((Map) RESTUtility.parseAsJSON(RESTUtility.execute(this.session, this.request, DropboxAPI.UPLOAD_SO_TIMEOUT_MS)));
            } catch (DropboxIOException e) {
                if (this.request.isAborted()) {
                    throw new DropboxPartialFileException(-1L);
                }
                throw e;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class ChunkedUploadRequest {
        private final HttpUriRequest request;
        private final Session session;

        protected ChunkedUploadRequest(HttpUriRequest httpUriRequest, Session session) {
            this.request = httpUriRequest;
            this.session = session;
        }

        public void abort() {
            this.request.abort();
        }

        public ChunkedUploadResponse upload() {
            try {
                return new ChunkedUploadResponse((Map) RESTUtility.parseAsJSON(RESTUtility.execute(this.session, this.request, DropboxAPI.UPLOAD_SO_TIMEOUT_MS)));
            } catch (DropboxIOException e) {
                if (this.request.isAborted()) {
                    throw new DropboxPartialFileException(-1L);
                }
                throw e;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class ChunkedUploadResponse {
        private final long offset;
        private final String uploadId;

        public ChunkedUploadResponse(Map<String, Object> map) {
            this.uploadId = (String) map.get("upload_id");
            this.offset = ((Long) map.get(INetFileSystem.LIST_OFFSET)).longValue();
        }

        public long getOffset() {
            return this.offset;
        }

        public String getUploadId() {
            return this.uploadId;
        }
    }

    /* loaded from: classes.dex */
    public class ChunkedUploader {
        private static final int DEFAULT_CHUNK_SIZE = 4194304;
        private boolean active;
        private int chunkSize;
        private byte[] lastChunk;
        private ChunkedUploadRequest lastRequest;
        private long offset;
        private InputStream stream;
        private long targetLength;
        private String uploadId;

        ChunkedUploader(DropboxAPI dropboxAPI, InputStream inputStream, long j) {
            this(inputStream, j, 4194304);
        }

        ChunkedUploader(InputStream inputStream, long j, int i) {
            this.offset = 0L;
            this.lastChunk = null;
            this.active = true;
            this.lastRequest = null;
            this.stream = inputStream;
            this.targetLength = j;
            this.chunkSize = i;
        }

        public void abort() {
            synchronized (this) {
                if (this.lastRequest != null) {
                    this.lastRequest.abort();
                }
                this.active = false;
            }
        }

        public Entry finish(String str, String str2) {
            return DropboxAPI.this.commitChunkedUpload(str, this.uploadId, false, str2);
        }

        public boolean getActive() {
            return this.active;
        }

        public long getOffset() {
            return this.offset;
        }

        public boolean isComplete() {
            return this.offset == this.targetLength;
        }

        public void upload() {
            upload(null);
        }

        public void upload(ProgressListener progressListener) {
            while (this.offset < this.targetLength) {
                int min = (int) Math.min(this.chunkSize, this.targetLength - this.offset);
                ProgressListener.Adjusted adjusted = progressListener != null ? new ProgressListener.Adjusted(progressListener, this.offset, this.targetLength) : null;
                if (this.lastChunk == null) {
                    this.lastChunk = new byte[min];
                    int read = this.stream.read(this.lastChunk);
                    if (read < this.lastChunk.length) {
                        throw new IllegalStateException("InputStream ended after " + (this.offset + read) + " bytes, expecting " + this.targetLength + " bytes.");
                    }
                }
                try {
                    synchronized (this) {
                        if (!this.active) {
                            throw new DropboxPartialFileException(0L);
                            break;
                        }
                        this.lastRequest = DropboxAPI.this.chunkedUploadRequest(new ByteArrayInputStream(this.lastChunk), this.lastChunk.length, adjusted, this.offset, this.uploadId);
                    }
                    ChunkedUploadResponse upload = this.lastRequest.upload();
                    this.offset = upload.getOffset();
                    this.uploadId = upload.getUploadId();
                    this.lastChunk = null;
                } catch (DropboxServerException e) {
                    if (!e.body.fields.containsKey(INetFileSystem.LIST_OFFSET)) {
                        throw e;
                    }
                    long longValue = ((Long) e.body.fields.get(INetFileSystem.LIST_OFFSET)).longValue();
                    if (longValue <= this.offset) {
                        throw e;
                    }
                    this.lastChunk = null;
                    this.offset = longValue;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class CreatedCopyRef {
        public final String copyRef;
        public final String expiration;

        public CreatedCopyRef(String str, String str2) {
            this.copyRef = str;
            this.expiration = str2;
        }

        public static CreatedCopyRef extractFromJson(JsonThing jsonThing) {
            JsonMap expectMap = jsonThing.expectMap();
            return new CreatedCopyRef(expectMap.get("copy_ref").expectString(), expectMap.get("expires").expectString());
        }
    }

    /* loaded from: classes.dex */
    public final class DeltaEntry<MD> {
        public final String lcPath;
        public final MD metadata;

        /* loaded from: classes.dex */
        public final class JsonExtractor<MD> extends com.dropbox.client2.jsonextract.JsonExtractor<DeltaEntry<MD>> {
            public final com.dropbox.client2.jsonextract.JsonExtractor<MD> mdExtractor;

            public JsonExtractor(com.dropbox.client2.jsonextract.JsonExtractor<MD> jsonExtractor) {
                this.mdExtractor = jsonExtractor;
            }

            public static <MD> DeltaEntry<MD> extract(JsonThing jsonThing, com.dropbox.client2.jsonextract.JsonExtractor<MD> jsonExtractor) {
                JsonList expectList = jsonThing.expectList();
                return new DeltaEntry<>(expectList.get(0).expectString(), expectList.get(1).optionalExtract(jsonExtractor));
            }

            @Override // com.dropbox.client2.jsonextract.JsonExtractor
            public DeltaEntry<MD> extract(JsonThing jsonThing) {
                return extract(jsonThing, this.mdExtractor);
            }
        }

        public DeltaEntry(String str, MD md) {
            this.lcPath = str;
            this.metadata = md;
        }
    }

    /* loaded from: classes.dex */
    public final class DeltaPage<MD> {
        public final String cursor;
        public final List<DeltaEntry<MD>> entries;
        public final boolean hasMore;
        public final boolean reset;

        public DeltaPage(boolean z, List<DeltaEntry<MD>> list, String str, boolean z2) {
            this.reset = z;
            this.entries = list;
            this.cursor = str;
            this.hasMore = z2;
        }

        public static <MD> DeltaPage<MD> extractFromJson(JsonThing jsonThing, JsonExtractor<MD> jsonExtractor) {
            JsonMap expectMap = jsonThing.expectMap();
            return new DeltaPage<>(expectMap.get("reset").expectBoolean(), expectMap.get("entries").expectList().extract(new DeltaEntry.JsonExtractor(jsonExtractor)), expectMap.get("cursor").expectString(), expectMap.get("has_more").expectBoolean());
        }
    }

    /* loaded from: classes.dex */
    public final class DropboxFileInfo {
        private String charset;
        private long fileSize;
        private Entry metadata;
        private String mimeType;

        private DropboxFileInfo(HttpResponse httpResponse) {
            String value;
            this.mimeType = null;
            this.fileSize = -1L;
            this.charset = null;
            this.metadata = null;
            this.metadata = parseXDropboxMetadata(httpResponse);
            if (this.metadata == null) {
                throw new DropboxParseException("Error parsing metadata.");
            }
            this.fileSize = parseFileSize(httpResponse, this.metadata);
            if (this.fileSize == -1) {
                throw new DropboxParseException("Error determining file size.");
            }
            Header firstHeader = httpResponse.getFirstHeader(MIME.CONTENT_TYPE);
            if (firstHeader == null || (value = firstHeader.getValue()) == null) {
                return;
            }
            String[] split = value.split(";");
            if (split.length > 0) {
                this.mimeType = split[0].trim();
            }
            if (split.length > 1) {
                String[] split2 = split[1].split("=");
                if (split2.length > 1) {
                    this.charset = split2[1].trim();
                }
            }
        }

        private static long parseFileSize(HttpResponse httpResponse, Entry entry) {
            long contentLength = httpResponse.getEntity().getContentLength();
            if (contentLength >= 0) {
                return contentLength;
            }
            if (entry != null) {
                return entry.bytes;
            }
            return -1L;
        }

        private static Entry parseXDropboxMetadata(HttpResponse httpResponse) {
            Header firstHeader;
            Object parse;
            if (httpResponse != null && (firstHeader = httpResponse.getFirstHeader("X-Dropbox-Metadata")) != null && (parse = JSONValue.parse(firstHeader.getValue())) != null) {
                return new Entry((Map) parse);
            }
            return null;
        }

        public final String getCharset() {
            return this.charset;
        }

        @Deprecated
        public final long getContentLength() {
            return getFileSize();
        }

        public final long getFileSize() {
            return this.fileSize;
        }

        public final Entry getMetadata() {
            return this.metadata;
        }

        public final String getMimeType() {
            return this.mimeType;
        }
    }

    /* loaded from: classes.dex */
    public class DropboxInputStream extends FilterInputStream {
        private final DropboxFileInfo info;
        private final HttpUriRequest request;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DropboxInputStream(HttpUriRequest httpUriRequest, HttpResponse httpResponse) {
            super(null);
            HttpEntity entity = httpResponse.getEntity();
            if (entity == null) {
                throw new DropboxException("Didn't get entity from HttpResponse");
            }
            try {
                this.in = entity.getContent();
                this.request = httpUriRequest;
                this.info = new DropboxFileInfo(httpResponse);
            } catch (IOException e) {
                throw new DropboxIOException(e);
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.request.abort();
        }

        /* JADX WARN: Removed duplicated region for block: B:75:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void copyStreamToOutput(OutputStream outputStream, ProgressListener progressListener) {
            BufferedOutputStream bufferedOutputStream;
            BufferedOutputStream bufferedOutputStream2 = null;
            long j = 0;
            long fileSize = this.info.getFileSize();
            try {
                bufferedOutputStream = new BufferedOutputStream(outputStream);
                try {
                    try {
                        byte[] bArr = new byte[4096];
                        long j2 = 0;
                        long j3 = 0;
                        while (true) {
                            try {
                                int read = read(bArr);
                                if (read < 0) {
                                    break;
                                }
                                bufferedOutputStream.write(bArr, 0, read);
                                j2 += read;
                                if (progressListener != null) {
                                    long currentTimeMillis = System.currentTimeMillis();
                                    if (currentTimeMillis - j3 > progressListener.progressInterval()) {
                                        progressListener.onProgress(j2, fileSize);
                                    } else {
                                        currentTimeMillis = j3;
                                    }
                                    j3 = currentTimeMillis;
                                }
                            } catch (IOException e) {
                                e = e;
                                j = j2;
                                bufferedOutputStream2 = bufferedOutputStream;
                                try {
                                    String message = e.getMessage();
                                    if (message != null && message.startsWith("No space")) {
                                        throw new DropboxLocalStorageFullException();
                                    }
                                    throw new DropboxPartialFileException(j);
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (outputStream != null) {
                                    }
                                    try {
                                        close();
                                        throw th;
                                    } catch (IOException e2) {
                                        throw th;
                                    }
                                }
                            }
                        }
                        if (fileSize >= 0 && j2 < fileSize) {
                            throw new DropboxPartialFileException(j2);
                        }
                        bufferedOutputStream.flush();
                        outputStream.flush();
                        try {
                            if (outputStream instanceof FileOutputStream) {
                                ((FileOutputStream) outputStream).getFD().sync();
                            }
                        } catch (SyncFailedException e3) {
                        }
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e4) {
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e5) {
                            }
                        }
                        try {
                            close();
                        } catch (IOException e6) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e7) {
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e8) {
                            }
                        }
                        close();
                        throw th;
                    }
                } catch (IOException e9) {
                    e = e9;
                    bufferedOutputStream2 = bufferedOutputStream;
                }
            } catch (IOException e10) {
                e = e10;
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream = null;
            }
        }

        public DropboxFileInfo getFileInfo() {
            return this.info;
        }
    }

    /* loaded from: classes.dex */
    public class DropboxLink {
        public final Date expires;
        public final String url;

        private DropboxLink(String str, boolean z) {
            if (!z && str.startsWith(Utils.https)) {
                str = str.replaceFirst(Utils.https, Utils.http).replaceFirst(":443/", "/");
            }
            this.url = str;
            this.expires = null;
        }

        private DropboxLink(Map<String, Object> map) {
            this(map, true);
        }

        private DropboxLink(Map<String, Object> map, boolean z) {
            String str = (String) map.get("url");
            String str2 = (String) map.get("expires");
            if (str2 != null) {
                this.expires = RESTUtility.parseDate(str2);
            } else {
                this.expires = null;
            }
            if (!z && str.startsWith(Utils.https)) {
                str = str.replaceFirst(Utils.https, Utils.http).replaceFirst(":443/", "/");
            }
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public class Entry {
        public static final JsonExtractor<Entry> JsonExtractor = new JsonExtractor<Entry>() { // from class: com.dropbox.client2.DropboxAPI.Entry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.client2.jsonextract.JsonExtractor
            public Entry extract(JsonThing jsonThing) {
                return new Entry((Map) jsonThing.expectMap().internal);
            }
        };
        public long bytes;
        public String clientMtime;
        public List<Entry> contents;
        public String hash;
        public String icon;
        public boolean isDeleted;
        public boolean isDir;
        public String mimeType;
        public String modified;
        public String path;
        public String rev;
        public String root;
        public String size;
        public boolean thumbExists;

        public Entry() {
        }

        public Entry(Map<String, Object> map) {
            this.bytes = DropboxAPI.getFromMapAsLong(map, "bytes");
            this.hash = (String) map.get("hash");
            this.icon = (String) map.get("icon");
            this.isDir = DropboxAPI.getFromMapAsBoolean(map, "is_dir");
            this.modified = (String) map.get("modified");
            this.clientMtime = (String) map.get("client_mtime");
            this.path = (String) map.get("path");
            this.root = (String) map.get("root");
            this.size = (String) map.get("size");
            this.mimeType = (String) map.get(NetFileInfo.MIME_TYPE);
            this.rev = (String) map.get("rev");
            this.thumbExists = DropboxAPI.getFromMapAsBoolean(map, "thumb_exists");
            this.isDeleted = DropboxAPI.getFromMapAsBoolean(map, "is_deleted");
            Object obj = map.get("contents");
            if (obj == null || !(obj instanceof JSONArray)) {
                this.contents = null;
                return;
            }
            this.contents = new ArrayList();
            Iterator it = ((JSONArray) obj).iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof Map) {
                    this.contents.add(new Entry((Map) next));
                }
            }
        }

        public String fileName() {
            return this.path.substring(this.path.lastIndexOf(47) + 1, this.path.length());
        }

        public String parentPath() {
            if (this.path.equals("/")) {
                return "";
            }
            return this.path.substring(0, this.path.lastIndexOf(47) + 1);
        }
    }

    /* loaded from: classes.dex */
    public final class RequestAndResponse {
        public final HttpUriRequest request;
        public final HttpResponse response;

        /* JADX INFO: Access modifiers changed from: protected */
        public RequestAndResponse(HttpUriRequest httpUriRequest, HttpResponse httpResponse) {
            this.request = httpUriRequest;
            this.response = httpResponse;
        }
    }

    /* loaded from: classes.dex */
    public enum ThumbFormat {
        PNG,
        JPEG
    }

    /* loaded from: classes.dex */
    public enum ThumbSize {
        ICON_32x32("small"),
        ICON_64x64("medium"),
        ICON_128x128("large"),
        ICON_256x256("256x256"),
        BESTFIT_320x240("320x240_bestfit"),
        BESTFIT_480x320("480x320_bestfit"),
        BESTFIT_640x480("640x480_bestfit"),
        BESTFIT_960x640("960x640_bestfit"),
        BESTFIT_1024x768("1024x768_bestfit");

        private String size;

        ThumbSize(String str) {
            this.size = str;
        }

        public String toAPISize() {
            return this.size;
        }
    }

    /* loaded from: classes.dex */
    public interface UploadRequest {
        void abort();

        Entry upload();
    }

    public DropboxAPI(SESS_T sess_t) {
        if (sess_t == null) {
            throw new IllegalArgumentException("Session must not be null.");
        }
        this.session = sess_t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Entry commitChunkedUpload(String str, String str2, boolean z, String str3) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("path is null or empty.");
        }
        assertAuthenticated();
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        HttpPost httpPost = new HttpPost(RESTUtility.buildURL(this.session.getContentServer(), 1, "/commit_chunked_upload/" + this.session.getAccessType() + str, new String[]{"overwrite", String.valueOf(z), "parent_rev", str3, "locale", this.session.getLocale().toString(), "upload_id", str2}));
        this.session.sign(httpPost);
        return new Entry((Map) RESTUtility.parseAsJSON(RESTUtility.execute(this.session, httpPost)));
    }

    protected static boolean getFromMapAsBoolean(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj == null || !(obj instanceof Boolean)) {
            return false;
        }
        return ((Boolean) obj).booleanValue();
    }

    protected static long getFromMapAsLong(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj != null) {
            if (obj instanceof Number) {
                return ((Number) obj).longValue();
            }
            if (obj instanceof String) {
                return Long.parseLong((String) obj, 16);
            }
        }
        return 0L;
    }

    private UploadRequest putFileRequest(String str, InputStream inputStream, long j, boolean z, String str2, ProgressListener progressListener) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("path is null or empty.");
        }
        assertAuthenticated();
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        String str3 = "/files_put/" + this.session.getAccessType() + str;
        if (str2 == null) {
            str2 = "";
        }
        HttpPut httpPut = new HttpPut(RESTUtility.buildURL(this.session.getContentServer(), 1, str3, new String[]{"overwrite", String.valueOf(z), "parent_rev", str2, "locale", this.session.getLocale().toString()}));
        this.session.sign(httpPut);
        InputStreamEntity inputStreamEntity = new InputStreamEntity(inputStream, j);
        inputStreamEntity.setContentEncoding("application/octet-stream");
        inputStreamEntity.setChunked(false);
        httpPut.setEntity(progressListener != null ? new ProgressListener.ProgressHttpEntity(inputStreamEntity, progressListener) : inputStreamEntity);
        return new BasicUploadRequest(httpPut, this.session);
    }

    public Account accountInfo() {
        assertAuthenticated();
        return new Account((Map) RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/account/info", 1, new String[]{"locale", this.session.getLocale().toString()}, this.session));
    }

    public Entry addFromCopyRef(String str, String str2) {
        assertAuthenticated();
        if (str2.startsWith("/")) {
            return new Entry((Map) RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/fileops/copy", 1, new String[]{"locale", this.session.getLocale().toString(), "root", this.session.getAccessType().toString(), "from_copy_ref", str, "to_path", str2}, this.session));
        }
        throw new IllegalArgumentException("'targetPath' doesn't start with \"/\": " + str2);
    }

    protected void assertAuthenticated() {
        if (!this.session.isLinked()) {
            throw new DropboxUnlinkedException();
        }
    }

    public ChunkedUploadRequest chunkedUploadRequest(InputStream inputStream, long j, ProgressListener progressListener, long j2, String str) {
        HttpPut httpPut = new HttpPut(RESTUtility.buildURL(this.session.getContentServer(), 1, "/chunked_upload/", j2 == 0 ? new String[0] : new String[]{"upload_id", str, INetFileSystem.LIST_OFFSET, "" + j2}));
        this.session.sign(httpPut);
        InputStreamEntity inputStreamEntity = new InputStreamEntity(inputStream, j);
        ProgressListener.ProgressHttpEntity progressHttpEntity = new ProgressListener.ProgressHttpEntity(inputStreamEntity, progressListener);
        inputStreamEntity.setContentEncoding("application/octet-stream");
        inputStreamEntity.setChunked(false);
        httpPut.setEntity(progressHttpEntity);
        return new ChunkedUploadRequest(httpPut, this.session);
    }

    public Entry copy(String str, String str2) {
        assertAuthenticated();
        return new Entry((Map) RESTUtility.request(RESTUtility.RequestMethod.POST, this.session.getAPIServer(), "/fileops/copy", 1, new String[]{"root", this.session.getAccessType().toString(), "from_path", str, "to_path", str2, "locale", this.session.getLocale().toString()}, this.session));
    }

    public CreatedCopyRef createCopyRef(String str) {
        assertAuthenticated();
        if (!str.startsWith("/")) {
            throw new IllegalArgumentException("'sourcePath' must start with \"/\": " + str);
        }
        try {
            return CreatedCopyRef.extractFromJson(new JsonThing(RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/copy_ref/" + this.session.getAccessType() + str, 1, new String[]{"locale", this.session.getLocale().toString()}, this.session)));
        } catch (JsonExtractionException e) {
            throw new DropboxParseException("Error parsing /copy_ref results: " + e.getMessage());
        }
    }

    public Entry createFolder(String str) {
        assertAuthenticated();
        return new Entry((Map) RESTUtility.request(RESTUtility.RequestMethod.POST, this.session.getAPIServer(), "/fileops/create_folder", 1, new String[]{"root", this.session.getAccessType().toString(), "path", str, "locale", this.session.getLocale().toString()}, this.session));
    }

    public void delete(String str) {
        assertAuthenticated();
        RESTUtility.request(RESTUtility.RequestMethod.POST, this.session.getAPIServer(), "/fileops/delete", 1, new String[]{"root", this.session.getAccessType().toString(), "path", str, "locale", this.session.getLocale().toString()}, this.session);
    }

    public DeltaPage<Entry> delta(String str) {
        try {
            return DeltaPage.extractFromJson(new JsonThing(RESTUtility.request(RESTUtility.RequestMethod.POST, this.session.getAPIServer(), "/delta", 1, new String[]{"cursor", str, "locale", this.session.getLocale().toString()}, this.session)), Entry.JsonExtractor);
        } catch (JsonExtractionException e) {
            throw new DropboxParseException("Error parsing /delta results: " + e.getMessage());
        }
    }

    public DropboxAPI<SESS_T>.ChunkedUploader getChunkedUploader(InputStream inputStream, long j) {
        return new ChunkedUploader(this, inputStream, j);
    }

    public DropboxAPI<SESS_T>.ChunkedUploader getChunkedUploader(InputStream inputStream, long j, int i) {
        return new ChunkedUploader(inputStream, j, i);
    }

    public DropboxFileInfo getFile(String str, String str2, OutputStream outputStream, ProgressListener progressListener) {
        DropboxInputStream fileStream = getFileStream(str, str2);
        fileStream.copyStreamToOutput(outputStream, progressListener);
        return fileStream.getFileInfo();
    }

    public DropboxInputStream getFileStream(String str, String str2) {
        assertAuthenticated();
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        HttpGet httpGet = new HttpGet(RESTUtility.buildURL(this.session.getContentServer(), 1, "/files/" + this.session.getAccessType() + str, new String[]{"rev", str2, "locale", this.session.getLocale().toString()}));
        this.session.sign(httpGet);
        return new DropboxInputStream(httpGet, RESTUtility.execute(this.session, httpGet));
    }

    public SESS_T getSession() {
        return this.session;
    }

    public DropboxFileInfo getThumbnail(String str, OutputStream outputStream, ThumbSize thumbSize, ThumbFormat thumbFormat, ProgressListener progressListener) {
        DropboxInputStream thumbnailStream = getThumbnailStream(str, thumbSize, thumbFormat);
        thumbnailStream.copyStreamToOutput(outputStream, progressListener);
        return thumbnailStream.getFileInfo();
    }

    public DropboxInputStream getThumbnailStream(String str, ThumbSize thumbSize, ThumbFormat thumbFormat) {
        assertAuthenticated();
        RequestAndResponse streamRequest = RESTUtility.streamRequest(RESTUtility.RequestMethod.GET, this.session.getContentServer(), "/thumbnails/" + this.session.getAccessType() + str, 1, new String[]{"size", thumbSize.toAPISize(), "format", thumbFormat.toString(), "locale", this.session.getLocale().toString()}, this.session);
        return new DropboxInputStream(streamRequest.request, streamRequest.response);
    }

    public DropboxLink media(String str, boolean z) {
        assertAuthenticated();
        return new DropboxLink((Map) RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/media/" + this.session.getAccessType() + str, 1, new String[]{"locale", this.session.getLocale().toString()}, this.session), z);
    }

    public Entry metadata(String str, int i, String str2, boolean z, String str3) {
        assertAuthenticated();
        if (i <= 0) {
            i = METADATA_DEFAULT_LIMIT;
        }
        return new Entry((Map) RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/metadata/" + this.session.getAccessType() + str, 1, new String[]{"file_limit", String.valueOf(i), "hash", str2, "list", String.valueOf(z), "rev", str3, "locale", this.session.getLocale().toString()}, this.session));
    }

    public Entry move(String str, String str2) {
        assertAuthenticated();
        return new Entry((Map) RESTUtility.request(RESTUtility.RequestMethod.POST, this.session.getAPIServer(), "/fileops/move", 1, new String[]{"root", this.session.getAccessType().toString(), "from_path", str, "to_path", str2, "locale", this.session.getLocale().toString()}, this.session));
    }

    public Entry putFile(String str, InputStream inputStream, long j, String str2, ProgressListener progressListener) {
        return putFileRequest(str, inputStream, j, str2, progressListener).upload();
    }

    public Entry putFileOverwrite(String str, InputStream inputStream, long j, ProgressListener progressListener) {
        return putFileOverwriteRequest(str, inputStream, j, progressListener).upload();
    }

    public UploadRequest putFileOverwriteRequest(String str, InputStream inputStream, long j, ProgressListener progressListener) {
        return putFileRequest(str, inputStream, j, true, null, progressListener);
    }

    public UploadRequest putFileRequest(String str, InputStream inputStream, long j, String str2, ProgressListener progressListener) {
        return putFileRequest(str, inputStream, j, false, str2, progressListener);
    }

    public Entry restore(String str, String str2) {
        assertAuthenticated();
        return new Entry((Map) RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/restore/" + this.session.getAccessType() + str, 1, new String[]{"rev", str2, "locale", this.session.getLocale().toString()}, this.session));
    }

    public List<Entry> revisions(String str, int i) {
        assertAuthenticated();
        if (i <= 0) {
            i = 1000;
        }
        JSONArray jSONArray = (JSONArray) RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/revisions/" + this.session.getAccessType() + str, 1, new String[]{"rev_limit", String.valueOf(i), "locale", this.session.getLocale().toString()}, this.session);
        LinkedList linkedList = new LinkedList();
        Iterator it = jSONArray.iterator();
        while (it.hasNext()) {
            linkedList.add(new Entry((Map) it.next()));
        }
        return linkedList;
    }

    public List<Entry> search(String str, String str2, int i, boolean z) {
        assertAuthenticated();
        if (i <= 0) {
            i = SEARCH_DEFAULT_LIMIT;
        }
        Object request = RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/search/" + this.session.getAccessType() + str, 1, new String[]{"query", str2, "file_limit", String.valueOf(i), "include_deleted", String.valueOf(z), "locale", this.session.getLocale().toString()}, this.session);
        ArrayList arrayList = new ArrayList();
        if (request instanceof JSONArray) {
            Iterator it = ((JSONArray) request).iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof Map) {
                    arrayList.add(new Entry((Map) next));
                }
            }
        }
        return arrayList;
    }

    public DropboxLink share(String str) {
        assertAuthenticated();
        Map map = (Map) RESTUtility.request(RESTUtility.RequestMethod.GET, this.session.getAPIServer(), "/shares/" + this.session.getAccessType() + str, 1, new String[]{"locale", this.session.getLocale().toString()}, this.session);
        String str2 = (String) map.get("url");
        Date parseDate = RESTUtility.parseDate((String) map.get("expires"));
        if (str2 == null || parseDate == null) {
            throw new DropboxParseException("Could not parse share response.");
        }
        return new DropboxLink(map);
    }
}
