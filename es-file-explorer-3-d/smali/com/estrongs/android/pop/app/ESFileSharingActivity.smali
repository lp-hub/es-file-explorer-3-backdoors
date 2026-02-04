.class public Lcom/estrongs/android/pop/app/ESFileSharingActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ESFileSharingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/ac;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ac;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)V

    invoke-static {p1, p2, v0}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/ad;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/ad;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;)Lcom/estrongs/android/ui/b/aq;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->k()Lcom/estrongs/android/ui/pcs/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/d;->a(ILandroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->requestWindowFeature(I)Z

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b048c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.estrongs.files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b02f8

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {p0, p0, v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_7
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->setTheme(I)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
