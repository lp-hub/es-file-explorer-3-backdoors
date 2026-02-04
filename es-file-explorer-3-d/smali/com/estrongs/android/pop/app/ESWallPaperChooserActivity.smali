.class public Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;
.super Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/g;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/util/av;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b03e9

    invoke-static {p0, v1, v0}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
