.class public abstract Lcom/estrongs/android/pop/app/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/e/gc;

.field b:Lcom/estrongs/android/pop/app/a/x;

.field private c:Lcom/estrongs/android/ui/e/fi;

.field private d:Lcom/estrongs/android/view/a/a;

.field private e:Lcom/estrongs/android/view/a/a;

.field private f:Lcom/estrongs/android/view/a/a;

.field private g:Lcom/estrongs/android/view/a/a;

.field private h:Lcom/estrongs/android/view/a/a;

.field private i:Lcom/estrongs/android/view/a/a;

.field private j:Lcom/estrongs/android/view/a/a;

.field private k:Lcom/estrongs/android/view/a/a;

.field private l:Lcom/estrongs/android/view/a/a;

.field private m:Lcom/estrongs/android/view/a/a;

.field private n:Lcom/estrongs/android/view/a/a;

.field private o:Lcom/estrongs/android/view/a/a;

.field private p:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/a/a;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :goto_0
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "mime_type"

    const-string v4, "audio/*"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_ringtone"

    if-ne p3, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_notification"

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_alarm"

    const/4 v4, 0x4

    if-ne p3, v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_music"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/a/a;Lcom/estrongs/android/pop/app/a/af;Lcom/estrongs/android/pop/app/a/ag;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/af;Lcom/estrongs/android/pop/app/a/ag;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/a/a;Lcom/estrongs/fs/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/fs/g;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/a/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/a/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/a/af;Lcom/estrongs/android/pop/app/a/ag;)V
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/a/ag;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/g;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v1, 0x7f0b03c8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/b/df;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/ui/b/df;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/df;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/ui/e/gc;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/a/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/a/g;-><init>(Lcom/estrongs/android/pop/app/a/a;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/g;->start()V

    return-void
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-ne p2, v0, :cond_3

    const-string v0, "is_ringtone"

    move-object v6, v0

    :goto_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    if-ne p2, v1, :cond_4

    const-string v0, "is_notification"

    move-object v6, v0

    goto :goto_0

    :cond_4
    const-string v0, "is_alarm"

    move-object v6, v0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    if-nez v0, :cond_6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_3
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private e()V
    .locals 5

    const v4, 0x7f020249

    const/4 v2, 0x1

    new-instance v0, Lcom/estrongs/android/ui/e/gc;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, v2, v2}, Lcom/estrongs/android/ui/e/gc;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    new-instance v0, Lcom/estrongs/android/ui/e/fi;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/e/fi;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->c:Lcom/estrongs/android/ui/e/fi;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->c:Lcom/estrongs/android/ui/e/fi;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/gc;->a(Lcom/estrongs/android/ui/e/fi;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->c:Lcom/estrongs/android/ui/e/fi;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/fi;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/gc;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    new-instance v1, Lcom/estrongs/android/pop/app/a/b;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/b;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/gc;->a(Lcom/estrongs/android/ui/e/gg;)V

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03de

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/j;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->d:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03ce

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/m;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03db

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/n;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03da

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/p;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->m:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03dc

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/q;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->l:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020279

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b03dd

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/s;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->k:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02027f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b025e

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/u;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/w;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->h:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b047c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/c;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->i:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020252

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b02b4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/d;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->j:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b006a

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/e;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->n:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/f;-><init>(Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->o:Lcom/estrongs/android/view/a/a;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne p2, v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/ringtones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "ES"

    const-string v1, "can\'t create ringtone folder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/notifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/alarms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/estrongs/fs/b/i;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    iget-object v5, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v5}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v5

    new-instance v8, Lcom/estrongs/fs/impl/local/b;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/estrongs/fs/impl/local/b;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v5, v8}, Lcom/estrongs/fs/b/i;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)V

    invoke-virtual {v0, v6}, Lcom/estrongs/a/a;->execute(Z)V

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eqz v0, :cond_4

    move v0, v6

    goto/16 :goto_1

    :cond_4
    move v3, v6

    :goto_2
    const/4 v0, 0x0

    if-eqz v3, :cond_5

    invoke-direct {p0, v2, p2}, Lcom/estrongs/android/pop/app/a/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_9

    move v0, v6

    goto/16 :goto_1

    :cond_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/a/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, p2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move v0, v7

    goto/16 :goto_1

    :cond_a
    move v3, v7

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->c:Lcom/estrongs/android/ui/e/fi;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/fi;->b()Lcom/estrongs/android/ui/e/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/e/gq;->j()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->o:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f()I

    move-result v0

    if-nez v0, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t()Lcom/estrongs/android/pop/app/a/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a;->j:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/cl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->i:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->h:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_3
    const/4 v0, 0x1

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "http://127.0.0.1:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->d:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->c()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->m:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    iget-wide v0, v0, Lcom/estrongs/android/pop/app/a/ag;->a:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->k:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/aj;->e()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->n:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->p:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->l:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    goto :goto_3

    :cond_c
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a;->a:Lcom/estrongs/android/ui/e/gc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->d()V

    :cond_0
    return-void
.end method
