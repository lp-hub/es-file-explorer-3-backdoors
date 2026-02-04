.class public Lcom/estrongs/fs/impl/g/a;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 5

    const-wide/16 v0, -0x1

    const/16 v4, 0x3f

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/estrongs/fs/impl/g/a;->a:J

    iput-wide v0, p0, Lcom/estrongs/fs/impl/g/a;->b:J

    const-string v0, "Content-Disposition"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "filename="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    :cond_2
    :goto_1
    const-string v0, "Content-Length"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/g/a;->a:J

    :cond_3
    const-string v0, "Last-Modified"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/g/a;->b:J

    :cond_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected doGetFileType()Lcom/estrongs/fs/l;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/l;->b:Lcom/estrongs/fs/l;

    return-object v0
.end method

.method public lastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/g/a;->b:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/g/a;->a:J

    return-wide v0
.end method
