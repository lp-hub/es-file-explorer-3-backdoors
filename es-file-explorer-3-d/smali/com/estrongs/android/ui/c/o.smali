.class Lcom/estrongs/android/ui/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/v;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/c/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/o;->b:Lcom/estrongs/android/ui/c/n;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/b/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/o;->b:Lcom/estrongs/android/ui/c/n;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/n;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/o;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p3, v2}, Lcom/estrongs/fs/b/z;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/z;->execute()V

    :cond_0
    return-void
.end method
