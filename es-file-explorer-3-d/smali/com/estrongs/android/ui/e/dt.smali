.class Lcom/estrongs/android/ui/e/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->b(Lcom/estrongs/android/ui/e/bz;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01b9

    invoke-static {v2, v3, v0}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->ah(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/q;->i(Z)V

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b02e5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/ui/e/du;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/e/du;-><init>(Lcom/estrongs/android/ui/e/dt;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto :goto_1

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    new-instance v2, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/ui/e/dv;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/ui/e/dv;-><init>(Lcom/estrongs/android/ui/e/dt;Lcom/estrongs/fs/g;)V

    check-cast v0, Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-direct {v2, v3, v4, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;Lcom/estrongs/android/pop/spfs/SPFileObject;)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    goto :goto_0
.end method
