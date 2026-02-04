.class public Lcom/estrongs/fs/impl/g/b;
.super Lcom/estrongs/fs/k;


# static fields
.field private static c:Lorg/apache/http/params/HttpParams;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/g/b;->c:Lorg/apache/http/params/HttpParams;

    sget-object v0, Lcom/estrongs/fs/impl/g/b;->c:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/estrongs/fs/impl/g/b;->c:Lorg/apache/http/params/HttpParams;

    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/fs/impl/g/b;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/impl/g/b;->b:I

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/fs/g;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/impl/g/b;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Lcom/estrongs/fs/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Lcom/estrongs/fs/g;
    .locals 5

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/g/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/fs/impl/g/b;->c:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lcom/estrongs/android/util/ab;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v1, "File is not found"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    instance-of v3, v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    if-eqz v3, :cond_4

    new-instance v1, Lcom/estrongs/android/c/b;

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    const-string v3, "NEW_USERNAME"

    invoke-virtual {p2, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NEW_PASSWORD"

    invoke-virtual {p2, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/estrongs/android/c/b;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/c/b;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x193

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v1, "File is forbidden"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/16 v2, 0x191

    if-ne v1, v2, :cond_3

    :try_start_2
    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v1, "File is unauthorized"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lcom/estrongs/fs/impl/g/a;

    invoke-direct {v1, p1, v0}, Lcom/estrongs/fs/impl/g/a;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/impl/g/b;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v5, 0xce

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/g/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v2, "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, p2, v6

    if-lez v0, :cond_0

    :try_start_0
    const-string v0, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/g/b;->c:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lcom/estrongs/android/util/ab;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz p4, :cond_1

    instance-of v2, v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    if-nez v2, :cond_2

    :cond_1
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_3

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v2, "File is unauthorized"

    invoke-direct {v0, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v2, Lcom/estrongs/android/c/b;

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    const-string v3, "NEW_USERNAME"

    invoke-virtual {p4, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NEW_PASSWORD"

    invoke-virtual {p4, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/estrongs/android/c/b;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/estrongs/android/c/b;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_4

    if-eq v3, v5, :cond_4

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v2

    const-string v3, "HttpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when HttpGet.abort()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    cmp-long v0, p2, v6

    if-lez v0, :cond_5

    if-ne v3, v5, :cond_6

    const-string v0, "RBT"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p4, v0, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    new-instance v0, Lcom/estrongs/fs/impl/g/c;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/estrongs/fs/impl/g/c;-><init>(Lcom/estrongs/fs/impl/g/b;Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpGet;)V

    :goto_3
    return-object v0

    :cond_6
    const-string v0, "RBT"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p4, v0, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/fs/impl/g/b;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
