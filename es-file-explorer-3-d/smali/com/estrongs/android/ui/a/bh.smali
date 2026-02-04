.class Lcom/estrongs/android/ui/a/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;Lcom/estrongs/android/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bh;->b:Lcom/estrongs/android/ui/a/s;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/bh;->a:Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.estrongs/bookmark"

    iget-object v2, p0, Lcom/estrongs/android/ui/a/bh;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/at;->c(Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bh;->b:Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/s;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
