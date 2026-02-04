.class Lcom/estrongs/fs/b/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/ak;->a:Lcom/estrongs/fs/b/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ak;->a:Lcom/estrongs/fs/b/ai;

    iget-object v0, v0, Lcom/estrongs/fs/b/ai;->a:Lcom/estrongs/fs/b/ah;

    invoke-static {v0}, Lcom/estrongs/fs/b/ah;->b(Lcom/estrongs/fs/b/ah;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/fs/b/ak;->a:Lcom/estrongs/fs/b/ai;

    iget-object v3, v3, Lcom/estrongs/fs/b/ai;->a:Lcom/estrongs/fs/b/ah;

    invoke-static {v3}, Lcom/estrongs/fs/b/ah;->d(Lcom/estrongs/fs/b/ah;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/ak;->a:Lcom/estrongs/fs/b/ai;

    iget-object v3, v3, Lcom/estrongs/fs/b/ai;->a:Lcom/estrongs/fs/b/ah;

    invoke-static {v3}, Lcom/estrongs/fs/b/ah;->c(Lcom/estrongs/fs/b/ah;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
