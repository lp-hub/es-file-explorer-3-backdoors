.class final Lcom/estrongs/android/pop/utils/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/k;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/fs/g;

.field final synthetic c:Lcom/estrongs/fs/g;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ao;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/ao;->b:Lcom/estrongs/fs/g;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/ao;->c:Lcom/estrongs/fs/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 5

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ao;->a:Landroid/app/Activity;

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ao;->b:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ao;->c:Lcom/estrongs/fs/g;

    const-string v4, "item_paste_name"

    invoke-interface {v0, v4}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    goto :goto_0
.end method
