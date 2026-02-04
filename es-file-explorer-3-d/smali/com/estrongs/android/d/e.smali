.class public Lcom/estrongs/android/d/e;
.super Lcom/estrongs/android/d/a;


# instance fields
.field private b:Lcom/estrongs/fs/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/a;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/d/e;->b:Lcom/estrongs/fs/d;

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 5

    const/4 v0, 0x1

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v1, v2, p1

    div-int v4, v3, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v1, v0, :cond_2

    if-le v2, p1, :cond_2

    div-int/2addr v2, v1

    if-ge v2, p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-le v1, v0, :cond_3

    if-le v3, p1, :cond_3

    div-int v2, v3, v1

    if-ge v2, p1, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, p3}, Lcom/estrongs/android/d/e;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    iput v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-boolean v2, Lcom/estrongs/android/pop/m;->s:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/d/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    long-to-int v0, v2

    move v2, v0

    :goto_0
    if-gtz v2, :cond_1

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    :goto_1
    return-object v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/d/e;->b:Lcom/estrongs/fs/d;

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-wide v2, v2, Lcom/estrongs/fs/c;->e:J

    long-to-int v0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/MemoryFile;

    invoke-direct {v0, p1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2000

    new-array v5, v2, [B

    iget-object v2, p0, Lcom/estrongs/android/d/e;->b:Lcom/estrongs/fs/d;

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    instance-of v3, v2, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v6, 0x2000

    invoke-direct {v3, v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    :cond_2
    :try_start_3
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_2
    if-lez v3, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    add-int/2addr v4, v3

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    :goto_3
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v2}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/d/e;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, ".thumbnails"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/d/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".thumbnails"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected c(Lcom/estrongs/fs/g;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/d/e;->b:Lcom/estrongs/fs/d;

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/d;->k(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v1

    move-object v1, v0

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    :try_start_2
    iget-object v4, p0, Lcom/estrongs/android/d/e;->b:Lcom/estrongs/fs/d;

    invoke-virtual {v4, v3}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7fffffff

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->mark(I)V

    :cond_2
    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/estrongs/android/d/d;->h(Lcom/estrongs/fs/g;)I

    move-result v3

    invoke-direct {p0, v2, v4, v3}, Lcom/estrongs/android/d/e;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    invoke-static {v2}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    :try_start_5
    invoke-direct {p0, v3}, Lcom/estrongs/android/d/e;->a(Ljava/lang/String;)Landroid/os/MemoryFile;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-static {v2}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    iget-object v5, p0, Lcom/estrongs/android/d/e;->b:Lcom/estrongs/fs/d;

    invoke-virtual {v5, v3}, Lcom/estrongs/fs/d;->k(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/estrongs/android/d/e;->b:Lcom/estrongs/fs/d;

    invoke-virtual {v5, v3}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_3
    invoke-static {v2}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4
    invoke-static {v2}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/av;->g()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f(Lcom/estrongs/fs/g;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/av;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method
