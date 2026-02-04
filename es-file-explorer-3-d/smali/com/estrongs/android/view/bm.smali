.class Lcom/estrongs/android/view/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/t;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/view/bk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bk;Lcom/estrongs/fs/b/t;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bm;->d:Lcom/estrongs/android/view/bk;

    iput-object p2, p0, Lcom/estrongs/android/view/bm;->a:Lcom/estrongs/fs/b/t;

    iput p3, p0, Lcom/estrongs/android/view/bm;->b:I

    iput-object p4, p0, Lcom/estrongs/android/view/bm;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/bm;->d:Lcom/estrongs/android/view/bk;

    iget-object v0, v0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/ar;

    iget-object v1, p0, Lcom/estrongs/android/view/bm;->a:Lcom/estrongs/fs/b/t;

    iget v2, p0, Lcom/estrongs/android/view/bm;->b:I

    iget-object v3, p0, Lcom/estrongs/android/view/bm;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/view/ar;Lcom/estrongs/fs/b/t;ILjava/lang/String;)V

    return-void
.end method
