.class public Lcom/estrongs/android/pop/utils/aj;
.super Ljava/lang/Object;


# direct methods
.method static synthetic a(Lcom/estrongs/fs/g;)I
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/aj;->b(Lcom/estrongs/fs/g;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;)Lcom/estrongs/android/ui/b/aq;
    .locals 4

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b03e6

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b047b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0364

    new-instance v3, Lcom/estrongs/android/pop/utils/at;

    invoke-direct {v3, p0, p1, v0}, Lcom/estrongs/android/pop/utils/at;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;[Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0238

    new-instance v3, Lcom/estrongs/android/pop/utils/ar;

    invoke-direct {v3, p0, p1, v0}, Lcom/estrongs/android/pop/utils/ar;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;[Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b044a

    new-instance v3, Lcom/estrongs/android/pop/utils/aq;

    invoke-direct {v3, p0, p1, v0}, Lcom/estrongs/android/pop/utils/aq;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;[Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/utils/au;

    invoke-direct {v2, v0, p0}, Lcom/estrongs/android/pop/utils/au;-><init>([Ljava/lang/Boolean;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "PCS_Home_Page_UV"

    const-string v3, "PCS_Home_Page_UV"

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private static a()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/fs/g;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b01a9

    invoke-static {p0, v0, v4}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/b/bv;

    const v2, 0x7f0b0016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/android/ui/b/bv;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/utils/ak;

    invoke-direct {v2, p0, p1, v0}, Lcom/estrongs/android/pop/utils/ak;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/g;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/bv;->a(Lcom/estrongs/android/ui/b/by;)V

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/bv;->b(Z)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/b/bv;->a(Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/bv;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/estrongs/fs/impl/i/b;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/estrongs/android/pop/utils/an;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/utils/an;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v1, "\u4e34\u65f6\u7528\u6237"

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/estrongs/android/ui/pcs/a;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/a;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/a;->a()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/d;->a()V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/utils/aj;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[@\\/:*?\"<>|()\u3000 ]"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v2, "item_paste_name"

    invoke-interface {v1, v2, v0}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/utils/aj;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    new-instance v2, Lcom/estrongs/fs/b/i;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/estrongs/fs/b/i;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/i;->c(Z)V

    iget-object v3, v2, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/estrongs/a/a/i;->k:Z

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/i;->b(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/i;->setCanHide(Z)V

    const v3, 0x7f0b02ba

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/i;->setDescription(Ljava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/pop/utils/ao;

    invoke-direct {v3, p0, v0, v1}, Lcom/estrongs/android/pop/utils/ao;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/i;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    new-instance v0, Lcom/estrongs/android/ui/b/ew;

    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/b/ew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v2}, Lcom/estrongs/fs/b/i;->execute()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v10}, Lcom/estrongs/fs/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-static {v12}, Lcom/estrongs/android/pop/utils/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {v10}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/av;->B(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    invoke-static {v10}, Lcom/estrongs/android/util/av;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    move-object v6, v0

    :goto_2
    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_26

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_26

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-result-object v2

    if-eqz v6, :cond_f

    :try_start_3
    const-string v0, "image/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-result v0

    if-eqz v0, :cond_f

    move-object v9, v6

    :goto_3
    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v2

    :goto_4
    if-nez v9, :cond_a

    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-result-object v2

    if-eqz v6, :cond_11

    :try_start_6
    const-string v0, "audio/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-result v0

    if-eqz v0, :cond_11

    move-object v9, v6

    move-object v8, v2

    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_6
    if-nez v9, :cond_23

    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_7
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v1

    if-eqz v1, :cond_22

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_22

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result-object v2

    if-eqz v6, :cond_15

    :try_start_9
    const-string v0, "video/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result v0

    if-eqz v0, :cond_15

    move-object v8, v6

    :goto_7
    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v9, v2

    :goto_8
    if-nez v8, :cond_1f

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1f

    const/4 v7, 0x0

    const/4 v0, 0x2

    :try_start_a
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v1

    if-eqz v1, :cond_1e

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-object v2

    :try_start_c
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_9
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    :goto_a
    if-nez v0, :cond_b

    move-object v0, v6

    :cond_b
    if-nez v0, :cond_c

    invoke-static {v10}, Lcom/estrongs/android/pop/utils/aj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v11, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1c

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_18

    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_e

    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "image/*"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    :goto_d
    const v0, 0x7f0b0038

    :try_start_d
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_f
    :try_start_e
    const-string v9, "image/*"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    :goto_e
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v2

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_f
    if-eqz v1, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    :cond_11
    :try_start_10
    const-string v0, "3gpp"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v9, "audio/3gpp"

    move-object v8, v2

    goto/16 :goto_5

    :cond_12
    const-string v0, "3gp"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v9, "audio/3gp"

    move-object v8, v2

    goto/16 :goto_5

    :cond_13
    const-string v9, "audio/*"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-object v8, v2

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    :goto_10
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v1, :cond_24

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v2

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v7

    :goto_11
    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v0

    :cond_15
    :try_start_12
    const-string v9, "video/*"
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object v8, v9

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    :goto_12
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v1, :cond_20

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v9

    move-object v9, v2

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v7

    :goto_13
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v0

    :catch_5
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    :goto_14
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    :goto_15
    if-eqz v7, :cond_17

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v0

    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    :cond_19
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "audio/*"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_1a
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "video/*"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_1b
    const-string v0, "application/*"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move-object v7, v1

    goto :goto_15

    :catch_6
    move-exception v0

    move-object v2, v8

    goto :goto_14

    :catch_7
    move-exception v0

    goto :goto_14

    :catchall_5
    move-exception v0

    goto :goto_13

    :catch_8
    move-exception v0

    move-object v2, v8

    goto :goto_12

    :catch_9
    move-exception v0

    goto :goto_12

    :catchall_6
    move-exception v0

    goto :goto_11

    :catch_a
    move-exception v0

    move-object v2, v8

    goto/16 :goto_10

    :catch_b
    move-exception v0

    goto/16 :goto_10

    :catchall_7
    move-exception v0

    goto/16 :goto_f

    :catch_c
    move-exception v0

    move-object v2, v8

    goto/16 :goto_e

    :catch_d
    move-exception v0

    goto/16 :goto_e

    :cond_1c
    move v0, v2

    goto/16 :goto_c

    :cond_1d
    move-object v0, v2

    goto/16 :goto_a

    :cond_1e
    move-object v2, v8

    goto/16 :goto_9

    :cond_1f
    move-object v0, v8

    goto/16 :goto_a

    :cond_20
    move-object v8, v9

    move-object v9, v2

    goto/16 :goto_8

    :cond_21
    move-object v9, v2

    goto/16 :goto_8

    :cond_22
    move-object v2, v8

    move-object v8, v9

    goto/16 :goto_7

    :cond_23
    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    goto/16 :goto_8

    :cond_24
    move-object v8, v2

    goto/16 :goto_6

    :cond_25
    move-object v8, v2

    goto/16 :goto_4

    :cond_26
    move-object v2, v8

    goto/16 :goto_3

    :cond_27
    move-object v6, v0

    goto/16 :goto_2

    :cond_28
    move-object v6, v0

    goto/16 :goto_2
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/estrongs/android/ui/b/y;

    invoke-direct {v1, p0, v0, p2}, Lcom/estrongs/android/ui/b/y;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/y;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/utils/aj;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "[@\\/:*?\"<>|()\u3000 ]"

    const-string v8, "_"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->f(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v2, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v7, "item_paste_name"

    invoke-interface {v6, v7, v0}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/io/File;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/estrongs/fs/b/i;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1}, Lcom/estrongs/fs/b/i;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;)V

    iget-object v2, v0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v9, v2, Lcom/estrongs/a/a/i;->k:Z

    invoke-virtual {v0, v9}, Lcom/estrongs/fs/b/i;->b(Z)V

    invoke-virtual {v0, v9}, Lcom/estrongs/fs/b/i;->setCanHide(Z)V

    const v2, 0x7f0b02ba

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/i;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/utils/am;

    invoke-direct {v1, p0, v4}, Lcom/estrongs/android/pop/utils/am;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/i;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    new-instance v1, Lcom/estrongs/android/ui/b/ew;

    const v2, 0x7f0b007f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    const v2, 0x7f0b0218

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/b/ew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->execute()V

    goto/16 :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_7

    const v0, 0x7f0b03ef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/estrongs/android/pop/utils/aj;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const v0, 0x7f0b0038

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;ZZ)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            "ZZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;ZZLcom/estrongs/a/a/k;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;ZZLcom/estrongs/a/a/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            "ZZ",
            "Lcom/estrongs/a/a/k;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    if-eqz p3, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/utils/az;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/az;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;Landroid/app/Activity;)V

    invoke-virtual {v0, p4}, Lcom/estrongs/fs/b/i;->b(Z)V

    const v1, 0x7f0b02ba

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/i;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/estrongs/fs/b/i;->a(Z)V

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Lcom/estrongs/fs/b/i;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/b/ew;

    const v2, 0x7f0b007f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->execute()V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2, p4}, Lcom/estrongs/android/pop/utils/aj;->c(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/utils/bb;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/estrongs/android/pop/utils/bb;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/a;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/a;->a()V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/a;->a(Lcom/estrongs/android/ui/pcs/v;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2, p4}, Lcom/estrongs/android/pop/utils/aj;->c(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;ZZLcom/estrongs/a/a/k;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            "ZZ",
            "Lcom/estrongs/a/a/k;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_2

    new-instance v7, Lcom/estrongs/android/ui/b/as;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/estrongs/android/ui/b/as;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/estrongs/fs/g;Z)V

    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/estrongs/android/pop/utils/ax;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/ax;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;ZZLcom/estrongs/a/a/k;)V

    invoke-virtual {v7, v8, v0}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/utils/ay;

    invoke-direct {v1}, Lcom/estrongs/android/pop/utils/ay;-><init>()V

    invoke-virtual {v7, v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {v7}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto :goto_0

    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;ZZLcom/estrongs/a/a/k;)V

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/ui/pcs/aw;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Lcom/estrongs/android/ui/pcs/aw;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v0, 0x7f0b048b

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/bd;

    const v2, 0x7f0b047d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/b/bd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/utils/ap;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/utils/ap;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/ui/pcs/aw;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/bd;->a(Lcom/estrongs/android/ui/b/bg;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/bd;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    invoke-static {p0, p2, v1, v4}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    new-instance v2, Lcom/estrongs/fs/n;

    invoke-direct {v2, v0, v3}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/g;)V

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b01a9

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/b/l;

    invoke-direct {v1, p0, p1, v0}, Lcom/estrongs/android/ui/b/l;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/l;->a()V

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/estrongs/android/pop/utils/be;

    invoke-direct {v5}, Lcom/estrongs/android/pop/utils/be;-><init>()V

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "[@\\/:*?\"<>|()\u3000 ]"

    const-string v7, "_"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->f(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v6, "item_paste_name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    :try_start_3
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_4
    :try_start_4
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "[@\\/:*?\"<>|()\u3000 ]"

    const-string v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v4, "item_paste_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_5
    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/estrongs/android/pop/utils/bf;

    invoke-direct {v5}, Lcom/estrongs/android/pop/utils/bf;-><init>()V

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-static {p0, v2, p2, p3}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/fs/g;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_3

    invoke-static {p3}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v4, p2}, Lcom/estrongs/android/pop/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/estrongs/fs/g;->setName(Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    new-array v5, v7, [Z

    new-instance v0, Lcom/estrongs/android/pop/utils/aw;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/g;Ljava/lang/String;Ljava/lang/String;[ZZ)V

    if-eqz p4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {p3}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0341

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object p2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    aget-boolean v0, v5, v8

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/a/a/k;",
            "Lcom/estrongs/android/pop/utils/br;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/pop/utils/bg;

    invoke-direct {v0, v3}, Lcom/estrongs/android/pop/utils/bg;-><init>(Lcom/estrongs/android/pop/utils/ak;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/bg;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/android/view/ar;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/estrongs/android/pop/utils/bg;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/utils/bg;-><init>(Lcom/estrongs/android/pop/utils/ak;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/estrongs/android/pop/utils/bg;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;ILjava/lang/String;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/android/view/ar;",
            "Lcom/estrongs/a/a/k;",
            "I",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/pop/utils/bg;

    invoke-direct {v0, v5}, Lcom/estrongs/android/pop/utils/bg;-><init>(Lcom/estrongs/android/pop/utils/ak;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/estrongs/android/pop/utils/bg;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v2

    if-lt v2, v6, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v2

    if-ge v2, v5, :cond_0

    const/16 v2, 0x1f

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "apk"

    aput-object v2, v3, v1

    const-string v2, "xml"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "rss"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "c"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "java"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "h"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "docx"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "xlsx"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "bat"

    aput-object v4, v3, v2

    const-string v2, "exe"

    aput-object v2, v3, v5

    const/16 v2, 0xa

    const-string v4, "dll"

    aput-object v4, v3, v2

    const-string v2, "lib"

    aput-object v2, v3, v6

    const/16 v2, 0xc

    const-string v4, "pptx"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "chm"

    aput-object v4, v3, v2

    const/16 v2, 0xe

    const-string v4, "esj"

    aput-object v4, v3, v2

    const/16 v2, 0xf

    const-string v4, "epub"

    aput-object v4, v3, v2

    const/16 v2, 0x10

    const-string v4, "tar"

    aput-object v4, v3, v2

    const/16 v2, 0x11

    const-string v4, "rar"

    aput-object v4, v3, v2

    const/16 v2, 0x12

    const-string v4, "odt"

    aput-object v4, v3, v2

    const/16 v2, 0x13

    const-string v4, "pgn"

    aput-object v4, v3, v2

    const/16 v2, 0x14

    const-string v4, "xqf"

    aput-object v4, v3, v2

    const/16 v2, 0x15

    const-string v4, "gzip"

    aput-object v4, v3, v2

    const/16 v2, 0x16

    const-string v4, "torrent"

    aput-object v4, v3, v2

    const/16 v2, 0x17

    const-string v4, "mobi"

    aput-object v4, v3, v2

    const/16 v2, 0x18

    const-string v4, "prc"

    aput-object v4, v3, v2

    const/16 v2, 0x19

    const-string v4, "vcf"

    aput-object v4, v3, v2

    const/16 v2, 0x1a

    const-string v4, "ics"

    aput-object v4, v3, v2

    const/16 v2, 0x1b

    const-string v4, "ical"

    aput-object v4, v3, v2

    const/16 v2, 0x1c

    const-string v4, "icalendar"

    aput-object v4, v3, v2

    const/16 v2, 0x1d

    const-string v4, "nzb"

    aput-object v4, v3, v2

    const/16 v2, 0x1e

    const-string v4, "umd"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/av;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static b(Lcom/estrongs/fs/g;)I
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/utils/al;

    invoke-direct {v1}, Lcom/estrongs/android/pop/utils/al;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "item_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/fs/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/*"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/av;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/util/av;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "image/*"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/av;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "audio/*"

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/av;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "video/*"

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/av;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "text/plain"

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/util/av;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "text/html"

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/estrongs/android/util/av;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "text/xml"

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/util/av;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "application/msword"

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/estrongs/android/util/av;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "application/vnd.ms-excel"

    goto :goto_0

    :cond_9
    invoke-static {p0}, Lcom/estrongs/android/util/av;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "application/vnd.ms-powerpoint"

    goto :goto_0

    :cond_a
    invoke-static {p0}, Lcom/estrongs/android/util/av;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "application/x-chm"

    goto :goto_0

    :cond_b
    invoke-static {p0}, Lcom/estrongs/android/util/av;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "application/pdf"

    goto :goto_0

    :cond_c
    invoke-static {p0}, Lcom/estrongs/android/util/av;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "application/epub+zip"

    goto :goto_0

    :cond_d
    invoke-static {p0}, Lcom/estrongs/android/util/av;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "application/x-mobipocket-ebook"

    goto :goto_0

    :cond_e
    invoke-static {p0}, Lcom/estrongs/android/util/av;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "application/x-rar-compressed"

    goto/16 :goto_0

    :cond_f
    invoke-static {p0}, Lcom/estrongs/android/util/av;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "application/esj"

    goto/16 :goto_0

    :cond_10
    invoke-static {p0}, Lcom/estrongs/android/util/av;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "audio/vnd.qcelp"

    goto/16 :goto_0

    :cond_11
    invoke-static {p0}, Lcom/estrongs/android/util/av;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "application/x-bittorrent"

    goto/16 :goto_0

    :cond_12
    invoke-static {p0}, Lcom/estrongs/android/util/av;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "application/x-chess-pgn"

    goto/16 :goto_0

    :cond_13
    invoke-static {p0}, Lcom/estrongs/android/util/av;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "application/vnd.oasis.opendocument.text"

    goto/16 :goto_0

    :cond_14
    invoke-static {p0}, Lcom/estrongs/android/util/av;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "application/x-shockwave-flash"

    goto/16 :goto_0

    :cond_15
    invoke-static {p0}, Lcom/estrongs/android/util/av;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "application/x-nzb"

    goto/16 :goto_0

    :cond_16
    invoke-static {p0}, Lcom/estrongs/android/util/av;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "text/calendar"

    goto/16 :goto_0

    :cond_17
    invoke-static {p0}, Lcom/estrongs/android/util/av;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "application/umd"

    goto/16 :goto_0

    :cond_18
    invoke-static {p0}, Lcom/estrongs/android/util/av;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "application/x-plucker"

    goto/16 :goto_0

    :cond_19
    invoke-static {p0}, Lcom/estrongs/android/util/av;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/estrongs/android/util/av;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const-string v0, "application/x-expandedbook"

    goto/16 :goto_0

    :cond_1b
    const-string v0, "text/*"

    goto/16 :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic b(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/estrongs/android/pop/utils/aj;->c(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V

    return-void
.end method

.method public static b(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/ui/pcs/aw;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/pop/utils/av;

    invoke-direct {v1, p0, v0, p1}, Lcom/estrongs/android/pop/utils/av;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/ui/pcs/aw;Ljava/util/List;)V

    invoke-static {p0, v1}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/b/aq;

    goto :goto_0
.end method

.method private static c(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v0, Lcom/estrongs/android/pop/utils/bc;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/bc;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;Landroid/app/Activity;Lcom/estrongs/fs/g;)V

    invoke-virtual {v0, p3}, Lcom/estrongs/fs/b/y;->b(Z)V

    const v1, 0x7f0b02bb

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/y;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/estrongs/fs/b/y;->a(Z)V

    new-instance v1, Lcom/estrongs/android/ui/b/ew;

    const v2, 0x7f0b007e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/y;->execute()V

    return-void
.end method
