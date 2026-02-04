.class Lcom/estrongs/android/pop/view/aj;
.super Lcom/estrongs/android/ui/g/f;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/aj;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p6, p0, Lcom/estrongs/android/pop/view/aj;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/ui/g/f;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aj;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->I()Z

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aj;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aj;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ar;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aj;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aj;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->U:Lcom/estrongs/android/ui/g/f;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/ui/g/f;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aj;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/aj;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aj;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v()Lcom/estrongs/fs/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
