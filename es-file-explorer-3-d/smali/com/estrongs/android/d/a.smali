.class public abstract Lcom/estrongs/android/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/d/h;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/d/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/estrongs/android/d/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/d/a;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 8

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    int-to-float v0, v3

    div-float v0, v5, v0

    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    :try_start_1
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/d/a;->c()I

    move-result v1

    invoke-virtual {p1, p3, v1, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    invoke-static {v7}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    int-to-float v0, v4

    div-float v0, v5, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method private h(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-boolean v4, Lcom/estrongs/android/pop/m;->s:Z

    if-nez v4, :cond_0

    :goto_0
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/d/a;->d(Lcom/estrongs/fs/g;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/d/a;->b(Lcom/estrongs/fs/g;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/d/a;->d(Lcom/estrongs/fs/g;)Ljava/io/File;

    move-result-object v1

    monitor-enter p1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/d/a;->c(Lcom/estrongs/fs/g;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/d/a;->f(Lcom/estrongs/fs/g;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/estrongs/android/d/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    monitor-exit p1

    goto :goto_0

    :cond_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/a;->h(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected b()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected b(Lcom/estrongs/fs/g;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected abstract c(Lcom/estrongs/fs/g;)Landroid/graphics/Bitmap;
.end method

.method protected d(Lcom/estrongs/fs/g;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/d/a;->e(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected e(Lcom/estrongs/fs/g;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f(Lcom/estrongs/fs/g;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public g(Lcom/estrongs/fs/g;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/d/a;->e(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
