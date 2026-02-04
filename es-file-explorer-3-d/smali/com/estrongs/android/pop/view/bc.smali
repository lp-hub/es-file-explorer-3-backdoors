.class Lcom/estrongs/android/pop/view/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/g;

.field final synthetic b:Lcom/estrongs/android/pop/view/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ba;Lcom/estrongs/fs/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bc;->b:Lcom/estrongs/android/pop/view/ba;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bc;->a:Lcom/estrongs/fs/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    check-cast p1, Lcom/estrongs/android/ui/b/ag;

    const v0, 0x7f080271

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/b/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bc;->b:Lcom/estrongs/android/pop/view/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->J()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bc;->b:Lcom/estrongs/android/pop/view/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0234

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Z)Z

    invoke-virtual {p1}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bc;->b:Lcom/estrongs/android/pop/view/ba;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bc;->a:Lcom/estrongs/fs/g;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ba;->a(Lcom/estrongs/android/pop/view/ba;Lcom/estrongs/fs/g;)V

    goto :goto_0
.end method
