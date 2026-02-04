.class Lcom/estrongs/fs/b/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/fs/b/au;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/au;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/av;->b:Lcom/estrongs/fs/b/au;

    iput-object p2, p0, Lcom/estrongs/fs/b/av;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/b/av;->b:Lcom/estrongs/fs/b/au;

    iget-object v0, v0, Lcom/estrongs/fs/b/au;->a:Lcom/estrongs/fs/b/at;

    iget-object v0, v0, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/fs/b/av;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
