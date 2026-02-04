.class public Lcom/estrongs/android/util/x;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/estrongs/android/util/aa;

.field private m:J

.field private n:J

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Thread;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/estrongs/android/util/x;->f:I

    const v0, 0xea60

    iput v0, p0, Lcom/estrongs/android/util/x;->g:I

    iput v3, p0, Lcom/estrongs/android/util/x;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/util/x;->b:I

    iput v3, p0, Lcom/estrongs/android/util/x;->c:I

    const-string v0, ".tmp"

    iput-object v0, p0, Lcom/estrongs/android/util/x;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/x;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/x;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/util/x;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/util/x;->n:J

    iput-object v2, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/util/x;->p:Ljava/lang/Thread;

    iput-boolean v3, p0, Lcom/estrongs/android/util/x;->q:Z

    iput-object v2, p0, Lcom/estrongs/android/util/x;->d:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/util/x;->e:Ljava/lang/Object;

    const-string v0, "GET"

    iput-object v0, p0, Lcom/estrongs/android/util/x;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/x;->s:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/util/x;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/util/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/util/x;->k()V

    return-void
.end method

.method private j()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/util/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/y;-><init>(Lcom/estrongs/android/util/x;)V

    iput-object v0, p0, Lcom/estrongs/android/util/x;->p:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/util/x;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private k()V
    .locals 12

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v1, p0, Lcom/estrongs/android/util/x;->j:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget v5, p0, Lcom/estrongs/android/util/x;->c:I

    if-nez v5, :cond_1f

    iget-object v5, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    if-eqz v5, :cond_1f

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    :goto_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    const/16 v1, 0x4e20

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v1, 0xea60

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/estrongs/android/util/x;->r:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/estrongs/android/util/x;->c:I

    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    iget-wide v8, p0, Lcom/estrongs/android/util/x;->n:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/estrongs/android/util/x;->n:J

    const-string v1, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, p0, Lcom/estrongs/android/util/x;->n:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/util/x;->s:[Ljava/lang/Object;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/estrongs/android/util/x;->s:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/estrongs/android/util/x;->s:[Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/estrongs/android/util/x;->s:[Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_0
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/estrongs/android/util/x;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    :try_start_1
    iget-object v4, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v5, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    invoke-interface {v4, v5, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :cond_3
    :goto_4
    return-void

    :cond_4
    :try_start_3
    const-string v1, "Cache-Control"

    const-string v4, "no-cache"

    invoke-virtual {v7, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Pragma"

    const-string v4, "no-cache"

    invoke-virtual {v7, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v7, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/util/x;->r:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_5
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v4, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    invoke-interface {v1, v4}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;)V

    :cond_6
    iget-wide v8, p0, Lcom/estrongs/android/util/x;->n:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_7
    if-eqz v5, :cond_1e

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v4, v5, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-wide v5, p0, Lcom/estrongs/android/util/x;->n:J

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v4

    :goto_5
    :try_start_5
    iget-boolean v1, p0, Lcom/estrongs/android/util/x;->q:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v3, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "UserCannelled"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_8
    if-eqz v9, :cond_9

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :cond_9
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_a
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v8

    :try_start_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/estrongs/android/util/x;->n:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/util/x;->m:J

    iget-wide v1, p0, Lcom/estrongs/android/util/x;->m:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_c

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v2, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v9, :cond_b

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :cond_b
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_4

    :cond_c
    :try_start_a
    iget v1, p0, Lcom/estrongs/android/util/x;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    iget-wide v1, p0, Lcom/estrongs/android/util/x;->m:J

    long-to-int v1, v1

    new-array v1, v1, [B

    move-object v11, v1

    :goto_6
    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v2, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/estrongs/android/util/x;->m:J

    iget-wide v5, p0, Lcom/estrongs/android/util/x;->n:J

    invoke-interface/range {v1 .. v6}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;JJ)V

    :cond_d
    const/4 v10, 0x0

    :cond_e
    :goto_7
    array-length v1, v11

    sub-int/2addr v1, v10

    invoke-virtual {v8, v11, v10, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_11

    iget-wide v3, p0, Lcom/estrongs/android/util/x;->n:J

    iget-wide v5, p0, Lcom/estrongs/android/util/x;->m:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_11

    iget-boolean v1, p0, Lcom/estrongs/android/util/x;->q:Z

    if-nez v1, :cond_11

    if-eqz v9, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v9, v11, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v1, 0x0

    move v10, v1

    :goto_8
    iget-wide v3, p0, Lcom/estrongs/android/util/x;->n:J

    int-to-long v1, v2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/util/x;->n:J

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v2, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/estrongs/android/util/x;->m:J

    iget-wide v5, p0, Lcom/estrongs/android/util/x;->n:J

    invoke-interface/range {v1 .. v6}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;JJ)V

    goto :goto_7

    :catch_3
    move-exception v1

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_3

    :cond_f
    const/16 v1, 0x4000

    new-array v1, v1, [B

    move-object v11, v1

    goto :goto_6

    :cond_10
    add-int v1, v10, v2

    move v10, v1

    goto :goto_8

    :cond_11
    iget-boolean v1, p0, Lcom/estrongs/android/util/x;->q:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v2, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "UserCannelled"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_12
    if-eqz v9, :cond_13

    :try_start_b
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :cond_13
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v1

    goto/16 :goto_4

    :cond_14
    :try_start_c
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_17

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v2, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_15
    if-eqz v9, :cond_16

    :try_start_d
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :cond_16
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v1

    goto/16 :goto_4

    :cond_17
    :try_start_e
    iget v1, p0, Lcom/estrongs/android/util/x;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v11}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/estrongs/android/util/x;->i:Ljava/lang/String;

    :cond_18
    if-eqz v9, :cond_1d

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    invoke-direct {p0}, Lcom/estrongs/android/util/x;->l()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const/4 v2, 0x0

    :goto_9
    :try_start_f
    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    iget-object v3, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/estrongs/android/util/aa;->b(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_19
    if-eqz v2, :cond_1a

    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_1a
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_4

    :catch_6
    move-exception v1

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    :goto_a
    if-eqz v3, :cond_1b

    :try_start_11
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_1b
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    :cond_1c
    :goto_b
    throw v1

    :catch_7
    move-exception v2

    goto :goto_b

    :catchall_1
    move-exception v1

    move-object v3, v4

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v3, v9

    goto :goto_a

    :catchall_3
    move-exception v1

    move-object v2, v8

    move-object v3, v9

    goto :goto_a

    :catchall_4
    move-exception v1

    move-object v3, v2

    move-object v2, v8

    goto :goto_a

    :catch_8
    move-exception v1

    goto/16 :goto_4

    :catch_9
    move-exception v1

    move-object v3, v4

    goto/16 :goto_3

    :catch_a
    move-exception v1

    move-object v3, v9

    goto/16 :goto_3

    :catch_b
    move-exception v1

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_3

    :cond_1d
    move-object v2, v9

    goto :goto_9

    :cond_1e
    move-object v9, v3

    goto/16 :goto_5

    :cond_1f
    move-object v5, v1

    goto/16 :goto_0
.end method

.method private l()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/util/x;->n:J

    return-wide v0
.end method

.method public a(Lcom/estrongs/android/util/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/x;->l:Lcom/estrongs/android/util/aa;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/x;->o:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/x;->q:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/util/x;->p:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/util/x;->n:J

    invoke-direct {p0}, Lcom/estrongs/android/util/x;->j()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/x;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/util/x;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/util/x;->n:J

    :cond_0
    new-instance v0, Lcom/estrongs/android/util/z;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/z;-><init>(Lcom/estrongs/android/util/x;)V

    iput-object v0, p0, Lcom/estrongs/android/util/x;->p:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/util/x;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/util/x;->m:J

    return-wide v0
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/util/x;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/util/x;->q:Z

    return v0
.end method
