.class public Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;
.super Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/g;)Z
    .locals 5

    const v4, 0x7f0b03e9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v2

    const v3, 0x3002a

    if-eq v2, v3, :cond_0

    const v3, 0x20020

    if-ne v2, v3, :cond_3

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/estrongs/android/util/aw;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/media/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p0, v4, v0}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/estrongs/android/util/av;->d(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v4, v0}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0
.end method
