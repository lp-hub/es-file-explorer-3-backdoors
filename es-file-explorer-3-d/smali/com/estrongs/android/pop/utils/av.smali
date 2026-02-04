.class final Lcom/estrongs/android/pop/utils/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/v;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/aw;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/ui/pcs/aw;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/av;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/av;->b:Lcom/estrongs/android/ui/pcs/aw;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/av;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/av;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/av;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/android/ui/pcs/az;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/pcs/az;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/az;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/av;->b:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/az;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/av;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/av;->b:Lcom/estrongs/android/ui/pcs/aw;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/av;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/ui/pcs/aw;Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
