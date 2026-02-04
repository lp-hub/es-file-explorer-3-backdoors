.class public Lcom/estrongs/android/pop/app/imageviewer/ac;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Unknown"

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ac;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x48c35000    # 400000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->f()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a()I

    move-result v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 3

    const v2, 0x7f0b0257

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const v0, 0x7f0b0232

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/estrongs/android/pop/app/imageviewer/am;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/estrongs/android/pop/app/imageviewer/Wallpaper;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/os/Handler;)V
    .locals 9

    const v8, 0x7f08021e

    const v7, 0x7f08021c

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030065

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ac;->a:Ljava/lang/String;

    const v0, 0x7f08021b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, ""

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    instance-of v0, p2, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080224

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080221

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080227

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08022a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ae;

    invoke-direct {v0, p2, p3, p0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ae;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/c;Landroid/os/Handler;Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ae;->start()V

    :goto_1
    const v0, 0x7f0b0006

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ag;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/imageviewer/ag;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ah;

    invoke-direct {v0, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ah;-><init>(Lcom/estrongs/android/ui/b/aq;Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_3

    const-string v0, ""

    move-object v1, v0

    :goto_2
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, p2, p0}, Lcom/estrongs/android/pop/app/imageviewer/ac;->b(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2
.end method

.method static a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .locals 5

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_gallery_confirm_delete_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b01b5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ad;

    invoke-direct {v0, p3}, Lcom/estrongs/android/pop/app/imageviewer/ad;-><init>(Ljava/lang/Runnable;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080222

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;I)V

    const v0, 0x7f080225

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;I)V

    const v0, 0x7f080228

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;I)V

    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ac;->b(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/view/View;Landroid/app/Activity;)V
    .locals 3

    const/4 v1, 0x0

    if-nez v1, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/ac;->a:Ljava/lang/String;

    :goto_0
    const v2, 0x7f080227

    invoke-static {p1, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;Ljava/lang/String;I)V

    if-nez v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/ac;->a:Ljava/lang/String;

    :cond_0
    const v0, 0x7f08022a

    invoke-static {p1, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;Ljava/lang/String;I)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Landroid/net/Uri;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    const v1, 0x7f0b0038

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0b0241

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static b(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->l()I

    move-result v2

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->k()I

    move-result v0

    :goto_0
    sget-object v3, Lcom/estrongs/android/pop/app/imageviewer/ac;->a:Ljava/lang/String;

    if-lez v2, :cond_2

    if-lez v0, :cond_2

    const v3, 0x7f0b04e9

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v1, 0x7f080224

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;Ljava/lang/String;I)V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/ac;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->n()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->n()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v1, 0x7f080221

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;Ljava/lang/String;I)V

    const-string v0, "image/jpeg"

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p0, p2}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/view/View;Landroid/app/Activity;)V

    :goto_2
    return-void

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_0
.end method
