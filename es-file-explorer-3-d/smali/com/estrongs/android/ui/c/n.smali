.class Lcom/estrongs/android/ui/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/l;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/n;->b:Lcom/estrongs/android/ui/c/l;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/n;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/n;->b:Lcom/estrongs/android/ui/c/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/l;->a(Lcom/estrongs/android/ui/c/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/n;->b:Lcom/estrongs/android/ui/c/l;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/c/l;->a(Lcom/estrongs/android/ui/c/l;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/n;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/c/o;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/c/o;-><init>(Lcom/estrongs/android/ui/c/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/n;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/estrongs/fs/b/z;

    iget-object v3, p0, Lcom/estrongs/android/ui/c/n;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/estrongs/fs/b/z;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/estrongs/fs/b/z;->execute()V

    goto :goto_0
.end method
