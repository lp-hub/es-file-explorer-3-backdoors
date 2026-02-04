.class Lcom/estrongs/fs/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/fs/b/b;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/d;->c:Lcom/estrongs/fs/b/b;

    iput-object p2, p0, Lcom/estrongs/fs/b/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/b/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/fs/b/d;->c:Lcom/estrongs/fs/b/b;

    iget-object v1, v1, Lcom/estrongs/fs/b/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/fs/b/d;->c:Lcom/estrongs/fs/b/b;

    iget-object v1, v1, Lcom/estrongs/fs/b/b;->a:Landroid/app/Activity;

    const v2, 0x7f0b04dd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/fs/b/d;->c:Lcom/estrongs/fs/b/b;

    iget-object v1, v1, Lcom/estrongs/fs/b/b;->a:Landroid/app/Activity;

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/fs/b/e;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/e;-><init>(Lcom/estrongs/fs/b/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/fs/b/d;->c:Lcom/estrongs/fs/b/b;

    iget-object v1, v1, Lcom/estrongs/fs/b/b;->a:Landroid/app/Activity;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/fs/b/f;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/f;-><init>(Lcom/estrongs/fs/b/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method
