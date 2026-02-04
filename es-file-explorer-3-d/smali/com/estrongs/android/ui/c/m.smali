.class Lcom/estrongs/android/ui/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/l;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/m;->b:Lcom/estrongs/android/ui/c/l;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/m;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/c/m;->b:Lcom/estrongs/android/ui/c/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/l;->a(Lcom/estrongs/android/ui/c/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/m;->b:Lcom/estrongs/android/ui/c/l;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/c/l;->a(Lcom/estrongs/android/ui/c/l;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/m;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->C()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/m;->a:Landroid/app/Activity;

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/fs/b/q;

    iget-object v4, p0, Lcom/estrongs/android/ui/c/m;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/estrongs/fs/b/q;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/estrongs/a/a;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/estrongs/a/a;->execute()V

    :cond_0
    return-void
.end method
