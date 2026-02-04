.class public Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/dropbox/client2/exception/DropboxException;

    const-string v1, "Didn\'t get entity from HttpResponse"

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    invoke-direct {v0, p2, v1}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;-><init>(Lorg/apache/http/HttpResponse;Lcom/dropbox/client2/DropboxAPI$1;)V

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    return-void
.end method

.method public copyStreamToOutput(Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)V
    .locals 17

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    invoke-virtual {v1}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->getFileSize()J

    move-result-wide v8

    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x1000

    :try_start_1
    new-array v10, v1, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide v15, v5

    move-wide v5, v2

    move-wide v3, v15

    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-ltz v1, :cond_4

    cmp-long v1, v5, v8

    if-gez v1, :cond_4

    new-instance v1, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    invoke-direct {v1, v5, v6}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    move-exception v1

    move-wide v2, v5

    move-object v4, v7

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v5, "No space"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/dropbox/client2/exception/DropboxLocalStorageFullException;

    invoke-direct {v1}, Lcom/dropbox/client2/exception/DropboxLocalStorageFullException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v7, v4

    :goto_2
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_5
    throw v1

    :cond_3
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v7, v10, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v1, v1

    add-long/2addr v5, v1

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v11, v1, v3

    invoke-virtual/range {p2 .. p2}, Lcom/dropbox/client2/ProgressListener;->progressInterval()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_9

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v8, v9}, Lcom/dropbox/client2/ProgressListener;->onProgress(JJ)V

    :goto_6
    move-wide v3, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_5

    move-object/from16 v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catch Ljava/io/SyncFailedException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_5
    :goto_7
    if-eqz v7, :cond_6

    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    :goto_8
    if-eqz p1, :cond_7

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_7
    :goto_9
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :goto_a
    return-void

    :cond_8
    :try_start_c
    new-instance v1, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    invoke-direct {v1, v2, v3}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v7, v4

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    move-object v4, v7

    goto/16 :goto_1

    :catch_9
    move-exception v1

    goto :goto_7

    :cond_9
    move-wide v1, v3

    goto :goto_6
.end method

.method public getFileInfo()Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    return-object v0
.end method
