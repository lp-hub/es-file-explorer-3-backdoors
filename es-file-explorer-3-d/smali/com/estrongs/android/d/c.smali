.class public Lcom/estrongs/android/d/c;
.super Lcom/estrongs/android/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/d/c;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, ".apps"

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

    iget-object v1, p0, Lcom/estrongs/android/d/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".apps"

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

.method protected b(Lcom/estrongs/fs/g;)Z
    .locals 1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected c(Lcom/estrongs/fs/g;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/d/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/aw;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/estrongs/fs/impl/b/c;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/b/c;->c()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public d()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "65536"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected f(Lcom/estrongs/fs/g;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method
