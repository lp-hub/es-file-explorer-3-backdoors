.class public Lcom/estrongs/fs/impl/h/b;
.super Lcom/estrongs/fs/impl/media/b;


# static fields
.field private static g:Lcom/estrongs/fs/impl/h/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/media/b;-><init>()V

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/estrongs/fs/impl/h/b;->c:Landroid/net/Uri;

    const-string v0, "_data"

    iput-object v0, p0, Lcom/estrongs/fs/impl/h/b;->d:Ljava/lang/String;

    const-string v0, "title_key"

    iput-object v0, p0, Lcom/estrongs/fs/impl/h/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/estrongs/fs/impl/h/b;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/h/b;->g:Lcom/estrongs/fs/impl/h/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/h/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/h/b;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/h/b;->g:Lcom/estrongs/fs/impl/h/b;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/h/b;->g:Lcom/estrongs/fs/impl/h/b;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "music://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/ak;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    const-string v0, "music://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "music://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/io/File;)Lcom/estrongs/fs/g;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/h/a;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/h/a;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
